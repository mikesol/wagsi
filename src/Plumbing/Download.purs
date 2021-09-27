module WAGSI.Plumbing.Download where

backoff :: Aff ~> Aff
backoff aff = go 0
  where
  go n
    | n >= 3 = throwException $ error "Maximum download tries exceeded"
    | otherwise = try aff >>= case _ of
      Left err -> Log.error (show err) *> delay (Milliseconds (toNumber (n+1) * 1000.0 )) *> go (n + 1)
      Right val -> val

getBuffers :: AudioContext -> Aff ({ | Samples BrowserAudioBuffer })
getBuffers = do
  res <- parallel $ traverse (sequential <<< dl) hacky
  pure $ (unsafeCoerce :: { | Object BrowserAudioBuffer } -> S.Samples BrowserAudioBuffer) res
  where
  hacky = (unsafeCoerce :: { | Samples String } -> Object String) S.urls
  dl bf = backoff $ toAffE $ decodeAudioDataFromUri audioCtx bf

downloadFiles :: 
  :: forall buffersS buffers trigger world
   . Lacks "buffers" world
  => AudioContext /\ Aff (Event { | trigger } /\ Behavior { | world })
  -> AudioContext /\ Aff (Event { | trigger } /\ Behavior { buffers :: { | Samples BrowserAudioBuffer } | world })
buffers (ac /\ aff) = ac /\ do
  trigger /\ world <- aff
  b' <- b
  pure (trigger /\ (Record.insert (Proxy :: _ "buffers") b' <$> world))
  where
  b = getBuffers ac