

-- | <p>An AWS Elemental MediaStore container is a namespace that holds folders and objects. You use a container endpoint to create, read, and delete objects. </p>
module AWS.MediaStore where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "MediaStore"
    service' <- AWS.service serviceName options
    pure $ Service service'
