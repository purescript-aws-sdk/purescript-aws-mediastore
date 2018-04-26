
module AWS.MediaStore.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype AllowedHeaders = AllowedHeaders (Array Header)
derive instance newtypeAllowedHeaders :: Newtype AllowedHeaders _
derive instance repGenericAllowedHeaders :: Generic AllowedHeaders _
instance showAllowedHeaders :: Show AllowedHeaders where show = genericShow
instance decodeAllowedHeaders :: Decode AllowedHeaders where decode = genericDecode options
instance encodeAllowedHeaders :: Encode AllowedHeaders where encode = genericEncode options



newtype AllowedMethods = AllowedMethods (Array MethodName)
derive instance newtypeAllowedMethods :: Newtype AllowedMethods _
derive instance repGenericAllowedMethods :: Generic AllowedMethods _
instance showAllowedMethods :: Show AllowedMethods where show = genericShow
instance decodeAllowedMethods :: Decode AllowedMethods where decode = genericDecode options
instance encodeAllowedMethods :: Encode AllowedMethods where encode = genericEncode options



newtype AllowedOrigins = AllowedOrigins (Array Origin)
derive instance newtypeAllowedOrigins :: Newtype AllowedOrigins _
derive instance repGenericAllowedOrigins :: Generic AllowedOrigins _
instance showAllowedOrigins :: Show AllowedOrigins where show = genericShow
instance decodeAllowedOrigins :: Decode AllowedOrigins where decode = genericDecode options
instance encodeAllowedOrigins :: Encode AllowedOrigins where encode = genericEncode options



-- | <p>This section describes operations that you can perform on an AWS Elemental MediaStore container.</p>
newtype Container = Container 
  { "Endpoint" :: Maybe (Endpoint)
  , "CreationTime" :: Maybe (TimeStamp)
  , "ARN" :: Maybe (ContainerARN)
  , "Name" :: Maybe (ContainerName)
  , "Status" :: Maybe (ContainerStatus)
  }
derive instance newtypeContainer :: Newtype Container _
derive instance repGenericContainer :: Generic Container _
instance showContainer :: Show Container where show = genericShow
instance decodeContainer :: Decode Container where decode = genericDecode options
instance encodeContainer :: Encode Container where encode = genericEncode options

-- | Constructs Container from required parameters
newContainer :: Container
newContainer  = Container { "ARN": Nothing, "CreationTime": Nothing, "Endpoint": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs Container's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainer' :: ( { "Endpoint" :: Maybe (Endpoint) , "CreationTime" :: Maybe (TimeStamp) , "ARN" :: Maybe (ContainerARN) , "Name" :: Maybe (ContainerName) , "Status" :: Maybe (ContainerStatus) } -> {"Endpoint" :: Maybe (Endpoint) , "CreationTime" :: Maybe (TimeStamp) , "ARN" :: Maybe (ContainerARN) , "Name" :: Maybe (ContainerName) , "Status" :: Maybe (ContainerStatus) } ) -> Container
newContainer'  customize = (Container <<< customize) { "ARN": Nothing, "CreationTime": Nothing, "Endpoint": Nothing, "Name": Nothing, "Status": Nothing }



newtype ContainerARN = ContainerARN String
derive instance newtypeContainerARN :: Newtype ContainerARN _
derive instance repGenericContainerARN :: Generic ContainerARN _
instance showContainerARN :: Show ContainerARN where show = genericShow
instance decodeContainerARN :: Decode ContainerARN where decode = genericDecode options
instance encodeContainerARN :: Encode ContainerARN where encode = genericEncode options



-- | <p>Resource already exists or is being updated.</p>
newtype ContainerInUseException = ContainerInUseException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeContainerInUseException :: Newtype ContainerInUseException _
derive instance repGenericContainerInUseException :: Generic ContainerInUseException _
instance showContainerInUseException :: Show ContainerInUseException where show = genericShow
instance decodeContainerInUseException :: Decode ContainerInUseException where decode = genericDecode options
instance encodeContainerInUseException :: Encode ContainerInUseException where encode = genericEncode options

-- | Constructs ContainerInUseException from required parameters
newContainerInUseException :: ContainerInUseException
newContainerInUseException  = ContainerInUseException { "Message": Nothing }

-- | Constructs ContainerInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerInUseException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ContainerInUseException
newContainerInUseException'  customize = (ContainerInUseException <<< customize) { "Message": Nothing }



newtype ContainerList = ContainerList (Array Container)
derive instance newtypeContainerList :: Newtype ContainerList _
derive instance repGenericContainerList :: Generic ContainerList _
instance showContainerList :: Show ContainerList where show = genericShow
instance decodeContainerList :: Decode ContainerList where decode = genericDecode options
instance encodeContainerList :: Encode ContainerList where encode = genericEncode options



newtype ContainerListLimit = ContainerListLimit Int
derive instance newtypeContainerListLimit :: Newtype ContainerListLimit _
derive instance repGenericContainerListLimit :: Generic ContainerListLimit _
instance showContainerListLimit :: Show ContainerListLimit where show = genericShow
instance decodeContainerListLimit :: Decode ContainerListLimit where decode = genericDecode options
instance encodeContainerListLimit :: Encode ContainerListLimit where encode = genericEncode options



newtype ContainerName = ContainerName String
derive instance newtypeContainerName :: Newtype ContainerName _
derive instance repGenericContainerName :: Generic ContainerName _
instance showContainerName :: Show ContainerName where show = genericShow
instance decodeContainerName :: Decode ContainerName where decode = genericDecode options
instance encodeContainerName :: Encode ContainerName where encode = genericEncode options



-- | <p>Could not perform an operation on a container that does not exist.</p>
newtype ContainerNotFoundException = ContainerNotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeContainerNotFoundException :: Newtype ContainerNotFoundException _
derive instance repGenericContainerNotFoundException :: Generic ContainerNotFoundException _
instance showContainerNotFoundException :: Show ContainerNotFoundException where show = genericShow
instance decodeContainerNotFoundException :: Decode ContainerNotFoundException where decode = genericDecode options
instance encodeContainerNotFoundException :: Encode ContainerNotFoundException where encode = genericEncode options

-- | Constructs ContainerNotFoundException from required parameters
newContainerNotFoundException :: ContainerNotFoundException
newContainerNotFoundException  = ContainerNotFoundException { "Message": Nothing }

-- | Constructs ContainerNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContainerNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ContainerNotFoundException
newContainerNotFoundException'  customize = (ContainerNotFoundException <<< customize) { "Message": Nothing }



newtype ContainerPolicy = ContainerPolicy String
derive instance newtypeContainerPolicy :: Newtype ContainerPolicy _
derive instance repGenericContainerPolicy :: Generic ContainerPolicy _
instance showContainerPolicy :: Show ContainerPolicy where show = genericShow
instance decodeContainerPolicy :: Decode ContainerPolicy where decode = genericDecode options
instance encodeContainerPolicy :: Encode ContainerPolicy where encode = genericEncode options



newtype ContainerStatus = ContainerStatus String
derive instance newtypeContainerStatus :: Newtype ContainerStatus _
derive instance repGenericContainerStatus :: Generic ContainerStatus _
instance showContainerStatus :: Show ContainerStatus where show = genericShow
instance decodeContainerStatus :: Decode ContainerStatus where decode = genericDecode options
instance encodeContainerStatus :: Encode ContainerStatus where encode = genericEncode options



-- | <p>The CORS policy of the container. </p>
newtype CorsPolicy = CorsPolicy (Array CorsRule)
derive instance newtypeCorsPolicy :: Newtype CorsPolicy _
derive instance repGenericCorsPolicy :: Generic CorsPolicy _
instance showCorsPolicy :: Show CorsPolicy where show = genericShow
instance decodeCorsPolicy :: Decode CorsPolicy where decode = genericDecode options
instance encodeCorsPolicy :: Encode CorsPolicy where encode = genericEncode options



-- | <p>Could not perform an operation on a policy that does not exist.</p>
newtype CorsPolicyNotFoundException = CorsPolicyNotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeCorsPolicyNotFoundException :: Newtype CorsPolicyNotFoundException _
derive instance repGenericCorsPolicyNotFoundException :: Generic CorsPolicyNotFoundException _
instance showCorsPolicyNotFoundException :: Show CorsPolicyNotFoundException where show = genericShow
instance decodeCorsPolicyNotFoundException :: Decode CorsPolicyNotFoundException where decode = genericDecode options
instance encodeCorsPolicyNotFoundException :: Encode CorsPolicyNotFoundException where encode = genericEncode options

-- | Constructs CorsPolicyNotFoundException from required parameters
newCorsPolicyNotFoundException :: CorsPolicyNotFoundException
newCorsPolicyNotFoundException  = CorsPolicyNotFoundException { "Message": Nothing }

-- | Constructs CorsPolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCorsPolicyNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> CorsPolicyNotFoundException
newCorsPolicyNotFoundException'  customize = (CorsPolicyNotFoundException <<< customize) { "Message": Nothing }



-- | <p>A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p>
newtype CorsRule = CorsRule 
  { "AllowedOrigins" :: Maybe (AllowedOrigins)
  , "AllowedMethods" :: Maybe (AllowedMethods)
  , "AllowedHeaders" :: Maybe (AllowedHeaders)
  , "MaxAgeSeconds" :: Maybe (MaxAgeSeconds)
  , "ExposeHeaders" :: Maybe (ExposeHeaders)
  }
derive instance newtypeCorsRule :: Newtype CorsRule _
derive instance repGenericCorsRule :: Generic CorsRule _
instance showCorsRule :: Show CorsRule where show = genericShow
instance decodeCorsRule :: Decode CorsRule where decode = genericDecode options
instance encodeCorsRule :: Encode CorsRule where encode = genericEncode options

-- | Constructs CorsRule from required parameters
newCorsRule :: CorsRule
newCorsRule  = CorsRule { "AllowedHeaders": Nothing, "AllowedMethods": Nothing, "AllowedOrigins": Nothing, "ExposeHeaders": Nothing, "MaxAgeSeconds": Nothing }

-- | Constructs CorsRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCorsRule' :: ( { "AllowedOrigins" :: Maybe (AllowedOrigins) , "AllowedMethods" :: Maybe (AllowedMethods) , "AllowedHeaders" :: Maybe (AllowedHeaders) , "MaxAgeSeconds" :: Maybe (MaxAgeSeconds) , "ExposeHeaders" :: Maybe (ExposeHeaders) } -> {"AllowedOrigins" :: Maybe (AllowedOrigins) , "AllowedMethods" :: Maybe (AllowedMethods) , "AllowedHeaders" :: Maybe (AllowedHeaders) , "MaxAgeSeconds" :: Maybe (MaxAgeSeconds) , "ExposeHeaders" :: Maybe (ExposeHeaders) } ) -> CorsRule
newCorsRule'  customize = (CorsRule <<< customize) { "AllowedHeaders": Nothing, "AllowedMethods": Nothing, "AllowedOrigins": Nothing, "ExposeHeaders": Nothing, "MaxAgeSeconds": Nothing }



newtype CreateContainerInput = CreateContainerInput 
  { "ContainerName" :: (ContainerName)
  }
derive instance newtypeCreateContainerInput :: Newtype CreateContainerInput _
derive instance repGenericCreateContainerInput :: Generic CreateContainerInput _
instance showCreateContainerInput :: Show CreateContainerInput where show = genericShow
instance decodeCreateContainerInput :: Decode CreateContainerInput where decode = genericDecode options
instance encodeCreateContainerInput :: Encode CreateContainerInput where encode = genericEncode options

-- | Constructs CreateContainerInput from required parameters
newCreateContainerInput :: ContainerName -> CreateContainerInput
newCreateContainerInput _ContainerName = CreateContainerInput { "ContainerName": _ContainerName }

-- | Constructs CreateContainerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateContainerInput' :: ContainerName -> ( { "ContainerName" :: (ContainerName) } -> {"ContainerName" :: (ContainerName) } ) -> CreateContainerInput
newCreateContainerInput' _ContainerName customize = (CreateContainerInput <<< customize) { "ContainerName": _ContainerName }



newtype CreateContainerOutput = CreateContainerOutput 
  { "Container" :: (Container)
  }
derive instance newtypeCreateContainerOutput :: Newtype CreateContainerOutput _
derive instance repGenericCreateContainerOutput :: Generic CreateContainerOutput _
instance showCreateContainerOutput :: Show CreateContainerOutput where show = genericShow
instance decodeCreateContainerOutput :: Decode CreateContainerOutput where decode = genericDecode options
instance encodeCreateContainerOutput :: Encode CreateContainerOutput where encode = genericEncode options

-- | Constructs CreateContainerOutput from required parameters
newCreateContainerOutput :: Container -> CreateContainerOutput
newCreateContainerOutput _Container = CreateContainerOutput { "Container": _Container }

-- | Constructs CreateContainerOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateContainerOutput' :: Container -> ( { "Container" :: (Container) } -> {"Container" :: (Container) } ) -> CreateContainerOutput
newCreateContainerOutput' _Container customize = (CreateContainerOutput <<< customize) { "Container": _Container }



newtype DeleteContainerInput = DeleteContainerInput 
  { "ContainerName" :: (ContainerName)
  }
derive instance newtypeDeleteContainerInput :: Newtype DeleteContainerInput _
derive instance repGenericDeleteContainerInput :: Generic DeleteContainerInput _
instance showDeleteContainerInput :: Show DeleteContainerInput where show = genericShow
instance decodeDeleteContainerInput :: Decode DeleteContainerInput where decode = genericDecode options
instance encodeDeleteContainerInput :: Encode DeleteContainerInput where encode = genericEncode options

-- | Constructs DeleteContainerInput from required parameters
newDeleteContainerInput :: ContainerName -> DeleteContainerInput
newDeleteContainerInput _ContainerName = DeleteContainerInput { "ContainerName": _ContainerName }

-- | Constructs DeleteContainerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteContainerInput' :: ContainerName -> ( { "ContainerName" :: (ContainerName) } -> {"ContainerName" :: (ContainerName) } ) -> DeleteContainerInput
newDeleteContainerInput' _ContainerName customize = (DeleteContainerInput <<< customize) { "ContainerName": _ContainerName }



newtype DeleteContainerOutput = DeleteContainerOutput Types.NoArguments
derive instance newtypeDeleteContainerOutput :: Newtype DeleteContainerOutput _
derive instance repGenericDeleteContainerOutput :: Generic DeleteContainerOutput _
instance showDeleteContainerOutput :: Show DeleteContainerOutput where show = genericShow
instance decodeDeleteContainerOutput :: Decode DeleteContainerOutput where decode = genericDecode options
instance encodeDeleteContainerOutput :: Encode DeleteContainerOutput where encode = genericEncode options



newtype DeleteContainerPolicyInput = DeleteContainerPolicyInput 
  { "ContainerName" :: (ContainerName)
  }
derive instance newtypeDeleteContainerPolicyInput :: Newtype DeleteContainerPolicyInput _
derive instance repGenericDeleteContainerPolicyInput :: Generic DeleteContainerPolicyInput _
instance showDeleteContainerPolicyInput :: Show DeleteContainerPolicyInput where show = genericShow
instance decodeDeleteContainerPolicyInput :: Decode DeleteContainerPolicyInput where decode = genericDecode options
instance encodeDeleteContainerPolicyInput :: Encode DeleteContainerPolicyInput where encode = genericEncode options

-- | Constructs DeleteContainerPolicyInput from required parameters
newDeleteContainerPolicyInput :: ContainerName -> DeleteContainerPolicyInput
newDeleteContainerPolicyInput _ContainerName = DeleteContainerPolicyInput { "ContainerName": _ContainerName }

-- | Constructs DeleteContainerPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteContainerPolicyInput' :: ContainerName -> ( { "ContainerName" :: (ContainerName) } -> {"ContainerName" :: (ContainerName) } ) -> DeleteContainerPolicyInput
newDeleteContainerPolicyInput' _ContainerName customize = (DeleteContainerPolicyInput <<< customize) { "ContainerName": _ContainerName }



newtype DeleteContainerPolicyOutput = DeleteContainerPolicyOutput Types.NoArguments
derive instance newtypeDeleteContainerPolicyOutput :: Newtype DeleteContainerPolicyOutput _
derive instance repGenericDeleteContainerPolicyOutput :: Generic DeleteContainerPolicyOutput _
instance showDeleteContainerPolicyOutput :: Show DeleteContainerPolicyOutput where show = genericShow
instance decodeDeleteContainerPolicyOutput :: Decode DeleteContainerPolicyOutput where decode = genericDecode options
instance encodeDeleteContainerPolicyOutput :: Encode DeleteContainerPolicyOutput where encode = genericEncode options



newtype DeleteCorsPolicyInput = DeleteCorsPolicyInput 
  { "ContainerName" :: (ContainerName)
  }
derive instance newtypeDeleteCorsPolicyInput :: Newtype DeleteCorsPolicyInput _
derive instance repGenericDeleteCorsPolicyInput :: Generic DeleteCorsPolicyInput _
instance showDeleteCorsPolicyInput :: Show DeleteCorsPolicyInput where show = genericShow
instance decodeDeleteCorsPolicyInput :: Decode DeleteCorsPolicyInput where decode = genericDecode options
instance encodeDeleteCorsPolicyInput :: Encode DeleteCorsPolicyInput where encode = genericEncode options

-- | Constructs DeleteCorsPolicyInput from required parameters
newDeleteCorsPolicyInput :: ContainerName -> DeleteCorsPolicyInput
newDeleteCorsPolicyInput _ContainerName = DeleteCorsPolicyInput { "ContainerName": _ContainerName }

-- | Constructs DeleteCorsPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCorsPolicyInput' :: ContainerName -> ( { "ContainerName" :: (ContainerName) } -> {"ContainerName" :: (ContainerName) } ) -> DeleteCorsPolicyInput
newDeleteCorsPolicyInput' _ContainerName customize = (DeleteCorsPolicyInput <<< customize) { "ContainerName": _ContainerName }



newtype DeleteCorsPolicyOutput = DeleteCorsPolicyOutput Types.NoArguments
derive instance newtypeDeleteCorsPolicyOutput :: Newtype DeleteCorsPolicyOutput _
derive instance repGenericDeleteCorsPolicyOutput :: Generic DeleteCorsPolicyOutput _
instance showDeleteCorsPolicyOutput :: Show DeleteCorsPolicyOutput where show = genericShow
instance decodeDeleteCorsPolicyOutput :: Decode DeleteCorsPolicyOutput where decode = genericDecode options
instance encodeDeleteCorsPolicyOutput :: Encode DeleteCorsPolicyOutput where encode = genericEncode options



newtype DescribeContainerInput = DescribeContainerInput 
  { "ContainerName" :: Maybe (ContainerName)
  }
derive instance newtypeDescribeContainerInput :: Newtype DescribeContainerInput _
derive instance repGenericDescribeContainerInput :: Generic DescribeContainerInput _
instance showDescribeContainerInput :: Show DescribeContainerInput where show = genericShow
instance decodeDescribeContainerInput :: Decode DescribeContainerInput where decode = genericDecode options
instance encodeDescribeContainerInput :: Encode DescribeContainerInput where encode = genericEncode options

-- | Constructs DescribeContainerInput from required parameters
newDescribeContainerInput :: DescribeContainerInput
newDescribeContainerInput  = DescribeContainerInput { "ContainerName": Nothing }

-- | Constructs DescribeContainerInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeContainerInput' :: ( { "ContainerName" :: Maybe (ContainerName) } -> {"ContainerName" :: Maybe (ContainerName) } ) -> DescribeContainerInput
newDescribeContainerInput'  customize = (DescribeContainerInput <<< customize) { "ContainerName": Nothing }



newtype DescribeContainerOutput = DescribeContainerOutput 
  { "Container" :: Maybe (Container)
  }
derive instance newtypeDescribeContainerOutput :: Newtype DescribeContainerOutput _
derive instance repGenericDescribeContainerOutput :: Generic DescribeContainerOutput _
instance showDescribeContainerOutput :: Show DescribeContainerOutput where show = genericShow
instance decodeDescribeContainerOutput :: Decode DescribeContainerOutput where decode = genericDecode options
instance encodeDescribeContainerOutput :: Encode DescribeContainerOutput where encode = genericEncode options

-- | Constructs DescribeContainerOutput from required parameters
newDescribeContainerOutput :: DescribeContainerOutput
newDescribeContainerOutput  = DescribeContainerOutput { "Container": Nothing }

-- | Constructs DescribeContainerOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeContainerOutput' :: ( { "Container" :: Maybe (Container) } -> {"Container" :: Maybe (Container) } ) -> DescribeContainerOutput
newDescribeContainerOutput'  customize = (DescribeContainerOutput <<< customize) { "Container": Nothing }



newtype Endpoint = Endpoint String
derive instance newtypeEndpoint :: Newtype Endpoint _
derive instance repGenericEndpoint :: Generic Endpoint _
instance showEndpoint :: Show Endpoint where show = genericShow
instance decodeEndpoint :: Decode Endpoint where decode = genericDecode options
instance encodeEndpoint :: Encode Endpoint where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



newtype ExposeHeaders = ExposeHeaders (Array Header)
derive instance newtypeExposeHeaders :: Newtype ExposeHeaders _
derive instance repGenericExposeHeaders :: Generic ExposeHeaders _
instance showExposeHeaders :: Show ExposeHeaders where show = genericShow
instance decodeExposeHeaders :: Decode ExposeHeaders where decode = genericDecode options
instance encodeExposeHeaders :: Encode ExposeHeaders where encode = genericEncode options



newtype GetContainerPolicyInput = GetContainerPolicyInput 
  { "ContainerName" :: (ContainerName)
  }
derive instance newtypeGetContainerPolicyInput :: Newtype GetContainerPolicyInput _
derive instance repGenericGetContainerPolicyInput :: Generic GetContainerPolicyInput _
instance showGetContainerPolicyInput :: Show GetContainerPolicyInput where show = genericShow
instance decodeGetContainerPolicyInput :: Decode GetContainerPolicyInput where decode = genericDecode options
instance encodeGetContainerPolicyInput :: Encode GetContainerPolicyInput where encode = genericEncode options

-- | Constructs GetContainerPolicyInput from required parameters
newGetContainerPolicyInput :: ContainerName -> GetContainerPolicyInput
newGetContainerPolicyInput _ContainerName = GetContainerPolicyInput { "ContainerName": _ContainerName }

-- | Constructs GetContainerPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContainerPolicyInput' :: ContainerName -> ( { "ContainerName" :: (ContainerName) } -> {"ContainerName" :: (ContainerName) } ) -> GetContainerPolicyInput
newGetContainerPolicyInput' _ContainerName customize = (GetContainerPolicyInput <<< customize) { "ContainerName": _ContainerName }



newtype GetContainerPolicyOutput = GetContainerPolicyOutput 
  { "Policy" :: (ContainerPolicy)
  }
derive instance newtypeGetContainerPolicyOutput :: Newtype GetContainerPolicyOutput _
derive instance repGenericGetContainerPolicyOutput :: Generic GetContainerPolicyOutput _
instance showGetContainerPolicyOutput :: Show GetContainerPolicyOutput where show = genericShow
instance decodeGetContainerPolicyOutput :: Decode GetContainerPolicyOutput where decode = genericDecode options
instance encodeGetContainerPolicyOutput :: Encode GetContainerPolicyOutput where encode = genericEncode options

-- | Constructs GetContainerPolicyOutput from required parameters
newGetContainerPolicyOutput :: ContainerPolicy -> GetContainerPolicyOutput
newGetContainerPolicyOutput _Policy = GetContainerPolicyOutput { "Policy": _Policy }

-- | Constructs GetContainerPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContainerPolicyOutput' :: ContainerPolicy -> ( { "Policy" :: (ContainerPolicy) } -> {"Policy" :: (ContainerPolicy) } ) -> GetContainerPolicyOutput
newGetContainerPolicyOutput' _Policy customize = (GetContainerPolicyOutput <<< customize) { "Policy": _Policy }



newtype GetCorsPolicyInput = GetCorsPolicyInput 
  { "ContainerName" :: (ContainerName)
  }
derive instance newtypeGetCorsPolicyInput :: Newtype GetCorsPolicyInput _
derive instance repGenericGetCorsPolicyInput :: Generic GetCorsPolicyInput _
instance showGetCorsPolicyInput :: Show GetCorsPolicyInput where show = genericShow
instance decodeGetCorsPolicyInput :: Decode GetCorsPolicyInput where decode = genericDecode options
instance encodeGetCorsPolicyInput :: Encode GetCorsPolicyInput where encode = genericEncode options

-- | Constructs GetCorsPolicyInput from required parameters
newGetCorsPolicyInput :: ContainerName -> GetCorsPolicyInput
newGetCorsPolicyInput _ContainerName = GetCorsPolicyInput { "ContainerName": _ContainerName }

-- | Constructs GetCorsPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCorsPolicyInput' :: ContainerName -> ( { "ContainerName" :: (ContainerName) } -> {"ContainerName" :: (ContainerName) } ) -> GetCorsPolicyInput
newGetCorsPolicyInput' _ContainerName customize = (GetCorsPolicyInput <<< customize) { "ContainerName": _ContainerName }



newtype GetCorsPolicyOutput = GetCorsPolicyOutput 
  { "CorsPolicy" :: (CorsPolicy)
  }
derive instance newtypeGetCorsPolicyOutput :: Newtype GetCorsPolicyOutput _
derive instance repGenericGetCorsPolicyOutput :: Generic GetCorsPolicyOutput _
instance showGetCorsPolicyOutput :: Show GetCorsPolicyOutput where show = genericShow
instance decodeGetCorsPolicyOutput :: Decode GetCorsPolicyOutput where decode = genericDecode options
instance encodeGetCorsPolicyOutput :: Encode GetCorsPolicyOutput where encode = genericEncode options

-- | Constructs GetCorsPolicyOutput from required parameters
newGetCorsPolicyOutput :: CorsPolicy -> GetCorsPolicyOutput
newGetCorsPolicyOutput _CorsPolicy = GetCorsPolicyOutput { "CorsPolicy": _CorsPolicy }

-- | Constructs GetCorsPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCorsPolicyOutput' :: CorsPolicy -> ( { "CorsPolicy" :: (CorsPolicy) } -> {"CorsPolicy" :: (CorsPolicy) } ) -> GetCorsPolicyOutput
newGetCorsPolicyOutput' _CorsPolicy customize = (GetCorsPolicyOutput <<< customize) { "CorsPolicy": _CorsPolicy }



newtype Header = Header String
derive instance newtypeHeader :: Newtype Header _
derive instance repGenericHeader :: Generic Header _
instance showHeader :: Show Header where show = genericShow
instance decodeHeader :: Decode Header where decode = genericDecode options
instance encodeHeader :: Encode Header where encode = genericEncode options



-- | <p>The service is temporarily unavailable.</p>
newtype InternalServerError = InternalServerError 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options

-- | Constructs InternalServerError from required parameters
newInternalServerError :: InternalServerError
newInternalServerError  = InternalServerError { "Message": Nothing }

-- | Constructs InternalServerError's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerError' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InternalServerError
newInternalServerError'  customize = (InternalServerError <<< customize) { "Message": Nothing }



-- | <p>A service limit has been exceeded.</p>
newtype LimitExceededException = LimitExceededException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "Message": Nothing }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "Message": Nothing }



newtype ListContainersInput = ListContainersInput 
  { "NextToken" :: Maybe (PaginationToken)
  , "MaxResults" :: Maybe (ContainerListLimit)
  }
derive instance newtypeListContainersInput :: Newtype ListContainersInput _
derive instance repGenericListContainersInput :: Generic ListContainersInput _
instance showListContainersInput :: Show ListContainersInput where show = genericShow
instance decodeListContainersInput :: Decode ListContainersInput where decode = genericDecode options
instance encodeListContainersInput :: Encode ListContainersInput where encode = genericEncode options

-- | Constructs ListContainersInput from required parameters
newListContainersInput :: ListContainersInput
newListContainersInput  = ListContainersInput { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListContainersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListContainersInput' :: ( { "NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ContainerListLimit) } -> {"NextToken" :: Maybe (PaginationToken) , "MaxResults" :: Maybe (ContainerListLimit) } ) -> ListContainersInput
newListContainersInput'  customize = (ListContainersInput <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListContainersOutput = ListContainersOutput 
  { "Containers" :: (ContainerList)
  , "NextToken" :: Maybe (PaginationToken)
  }
derive instance newtypeListContainersOutput :: Newtype ListContainersOutput _
derive instance repGenericListContainersOutput :: Generic ListContainersOutput _
instance showListContainersOutput :: Show ListContainersOutput where show = genericShow
instance decodeListContainersOutput :: Decode ListContainersOutput where decode = genericDecode options
instance encodeListContainersOutput :: Encode ListContainersOutput where encode = genericEncode options

-- | Constructs ListContainersOutput from required parameters
newListContainersOutput :: ContainerList -> ListContainersOutput
newListContainersOutput _Containers = ListContainersOutput { "Containers": _Containers, "NextToken": Nothing }

-- | Constructs ListContainersOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListContainersOutput' :: ContainerList -> ( { "Containers" :: (ContainerList) , "NextToken" :: Maybe (PaginationToken) } -> {"Containers" :: (ContainerList) , "NextToken" :: Maybe (PaginationToken) } ) -> ListContainersOutput
newListContainersOutput' _Containers customize = (ListContainersOutput <<< customize) { "Containers": _Containers, "NextToken": Nothing }



newtype MaxAgeSeconds = MaxAgeSeconds Int
derive instance newtypeMaxAgeSeconds :: Newtype MaxAgeSeconds _
derive instance repGenericMaxAgeSeconds :: Generic MaxAgeSeconds _
instance showMaxAgeSeconds :: Show MaxAgeSeconds where show = genericShow
instance decodeMaxAgeSeconds :: Decode MaxAgeSeconds where decode = genericDecode options
instance encodeMaxAgeSeconds :: Encode MaxAgeSeconds where encode = genericEncode options



newtype MethodName = MethodName String
derive instance newtypeMethodName :: Newtype MethodName _
derive instance repGenericMethodName :: Generic MethodName _
instance showMethodName :: Show MethodName where show = genericShow
instance decodeMethodName :: Decode MethodName where decode = genericDecode options
instance encodeMethodName :: Encode MethodName where encode = genericEncode options



newtype Origin = Origin String
derive instance newtypeOrigin :: Newtype Origin _
derive instance repGenericOrigin :: Generic Origin _
instance showOrigin :: Show Origin where show = genericShow
instance decodeOrigin :: Decode Origin where decode = genericDecode options
instance encodeOrigin :: Encode Origin where encode = genericEncode options



newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where show = genericShow
instance decodePaginationToken :: Decode PaginationToken where decode = genericDecode options
instance encodePaginationToken :: Encode PaginationToken where encode = genericEncode options



-- | <p>Could not perform an operation on a policy that does not exist.</p>
newtype PolicyNotFoundException = PolicyNotFoundException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypePolicyNotFoundException :: Newtype PolicyNotFoundException _
derive instance repGenericPolicyNotFoundException :: Generic PolicyNotFoundException _
instance showPolicyNotFoundException :: Show PolicyNotFoundException where show = genericShow
instance decodePolicyNotFoundException :: Decode PolicyNotFoundException where decode = genericDecode options
instance encodePolicyNotFoundException :: Encode PolicyNotFoundException where encode = genericEncode options

-- | Constructs PolicyNotFoundException from required parameters
newPolicyNotFoundException :: PolicyNotFoundException
newPolicyNotFoundException  = PolicyNotFoundException { "Message": Nothing }

-- | Constructs PolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> PolicyNotFoundException
newPolicyNotFoundException'  customize = (PolicyNotFoundException <<< customize) { "Message": Nothing }



newtype PutContainerPolicyInput = PutContainerPolicyInput 
  { "ContainerName" :: (ContainerName)
  , "Policy" :: (ContainerPolicy)
  }
derive instance newtypePutContainerPolicyInput :: Newtype PutContainerPolicyInput _
derive instance repGenericPutContainerPolicyInput :: Generic PutContainerPolicyInput _
instance showPutContainerPolicyInput :: Show PutContainerPolicyInput where show = genericShow
instance decodePutContainerPolicyInput :: Decode PutContainerPolicyInput where decode = genericDecode options
instance encodePutContainerPolicyInput :: Encode PutContainerPolicyInput where encode = genericEncode options

-- | Constructs PutContainerPolicyInput from required parameters
newPutContainerPolicyInput :: ContainerName -> ContainerPolicy -> PutContainerPolicyInput
newPutContainerPolicyInput _ContainerName _Policy = PutContainerPolicyInput { "ContainerName": _ContainerName, "Policy": _Policy }

-- | Constructs PutContainerPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutContainerPolicyInput' :: ContainerName -> ContainerPolicy -> ( { "ContainerName" :: (ContainerName) , "Policy" :: (ContainerPolicy) } -> {"ContainerName" :: (ContainerName) , "Policy" :: (ContainerPolicy) } ) -> PutContainerPolicyInput
newPutContainerPolicyInput' _ContainerName _Policy customize = (PutContainerPolicyInput <<< customize) { "ContainerName": _ContainerName, "Policy": _Policy }



newtype PutContainerPolicyOutput = PutContainerPolicyOutput Types.NoArguments
derive instance newtypePutContainerPolicyOutput :: Newtype PutContainerPolicyOutput _
derive instance repGenericPutContainerPolicyOutput :: Generic PutContainerPolicyOutput _
instance showPutContainerPolicyOutput :: Show PutContainerPolicyOutput where show = genericShow
instance decodePutContainerPolicyOutput :: Decode PutContainerPolicyOutput where decode = genericDecode options
instance encodePutContainerPolicyOutput :: Encode PutContainerPolicyOutput where encode = genericEncode options



newtype PutCorsPolicyInput = PutCorsPolicyInput 
  { "ContainerName" :: (ContainerName)
  , "CorsPolicy" :: (CorsPolicy)
  }
derive instance newtypePutCorsPolicyInput :: Newtype PutCorsPolicyInput _
derive instance repGenericPutCorsPolicyInput :: Generic PutCorsPolicyInput _
instance showPutCorsPolicyInput :: Show PutCorsPolicyInput where show = genericShow
instance decodePutCorsPolicyInput :: Decode PutCorsPolicyInput where decode = genericDecode options
instance encodePutCorsPolicyInput :: Encode PutCorsPolicyInput where encode = genericEncode options

-- | Constructs PutCorsPolicyInput from required parameters
newPutCorsPolicyInput :: ContainerName -> CorsPolicy -> PutCorsPolicyInput
newPutCorsPolicyInput _ContainerName _CorsPolicy = PutCorsPolicyInput { "ContainerName": _ContainerName, "CorsPolicy": _CorsPolicy }

-- | Constructs PutCorsPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutCorsPolicyInput' :: ContainerName -> CorsPolicy -> ( { "ContainerName" :: (ContainerName) , "CorsPolicy" :: (CorsPolicy) } -> {"ContainerName" :: (ContainerName) , "CorsPolicy" :: (CorsPolicy) } ) -> PutCorsPolicyInput
newPutCorsPolicyInput' _ContainerName _CorsPolicy customize = (PutCorsPolicyInput <<< customize) { "ContainerName": _ContainerName, "CorsPolicy": _CorsPolicy }



newtype PutCorsPolicyOutput = PutCorsPolicyOutput Types.NoArguments
derive instance newtypePutCorsPolicyOutput :: Newtype PutCorsPolicyOutput _
derive instance repGenericPutCorsPolicyOutput :: Generic PutCorsPolicyOutput _
instance showPutCorsPolicyOutput :: Show PutCorsPolicyOutput where show = genericShow
instance decodePutCorsPolicyOutput :: Decode PutCorsPolicyOutput where decode = genericDecode options
instance encodePutCorsPolicyOutput :: Encode PutCorsPolicyOutput where encode = genericEncode options



newtype TimeStamp = TimeStamp Types.Timestamp
derive instance newtypeTimeStamp :: Newtype TimeStamp _
derive instance repGenericTimeStamp :: Generic TimeStamp _
instance showTimeStamp :: Show TimeStamp where show = genericShow
instance decodeTimeStamp :: Decode TimeStamp where decode = genericDecode options
instance encodeTimeStamp :: Encode TimeStamp where encode = genericEncode options

