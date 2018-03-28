## Module AWS.MediaStore.Types

#### `options`

``` purescript
options :: Options
```

#### `AllowedHeaders`

``` purescript
newtype AllowedHeaders
  = AllowedHeaders (Array Header)
```

##### Instances
``` purescript
Newtype AllowedHeaders _
Generic AllowedHeaders _
Show AllowedHeaders
Decode AllowedHeaders
Encode AllowedHeaders
```

#### `AllowedMethods`

``` purescript
newtype AllowedMethods
  = AllowedMethods (Array MethodName)
```

##### Instances
``` purescript
Newtype AllowedMethods _
Generic AllowedMethods _
Show AllowedMethods
Decode AllowedMethods
Encode AllowedMethods
```

#### `AllowedOrigins`

``` purescript
newtype AllowedOrigins
  = AllowedOrigins (Array Origin)
```

##### Instances
``` purescript
Newtype AllowedOrigins _
Generic AllowedOrigins _
Show AllowedOrigins
Decode AllowedOrigins
Encode AllowedOrigins
```

#### `Container`

``` purescript
newtype Container
  = Container { "Endpoint" :: NullOrUndefined (Endpoint), "CreationTime" :: NullOrUndefined (TimeStamp), "ARN" :: NullOrUndefined (ContainerARN), "Name" :: NullOrUndefined (ContainerName), "Status" :: NullOrUndefined (ContainerStatus) }
```

<p>This section describes operations that you can perform on an AWS Elemental MediaStore container.</p>

##### Instances
``` purescript
Newtype Container _
Generic Container _
Show Container
Decode Container
Encode Container
```

#### `newContainer`

``` purescript
newContainer :: Container
```

Constructs Container from required parameters

#### `newContainer'`

``` purescript
newContainer' :: ({ "Endpoint" :: NullOrUndefined (Endpoint), "CreationTime" :: NullOrUndefined (TimeStamp), "ARN" :: NullOrUndefined (ContainerARN), "Name" :: NullOrUndefined (ContainerName), "Status" :: NullOrUndefined (ContainerStatus) } -> { "Endpoint" :: NullOrUndefined (Endpoint), "CreationTime" :: NullOrUndefined (TimeStamp), "ARN" :: NullOrUndefined (ContainerARN), "Name" :: NullOrUndefined (ContainerName), "Status" :: NullOrUndefined (ContainerStatus) }) -> Container
```

Constructs Container's fields from required parameters

#### `ContainerARN`

``` purescript
newtype ContainerARN
  = ContainerARN String
```

##### Instances
``` purescript
Newtype ContainerARN _
Generic ContainerARN _
Show ContainerARN
Decode ContainerARN
Encode ContainerARN
```

#### `ContainerInUseException`

``` purescript
newtype ContainerInUseException
  = ContainerInUseException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Resource already exists or is being updated.</p>

##### Instances
``` purescript
Newtype ContainerInUseException _
Generic ContainerInUseException _
Show ContainerInUseException
Decode ContainerInUseException
Encode ContainerInUseException
```

#### `newContainerInUseException`

``` purescript
newContainerInUseException :: ContainerInUseException
```

Constructs ContainerInUseException from required parameters

#### `newContainerInUseException'`

``` purescript
newContainerInUseException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ContainerInUseException
```

Constructs ContainerInUseException's fields from required parameters

#### `ContainerList`

``` purescript
newtype ContainerList
  = ContainerList (Array Container)
```

##### Instances
``` purescript
Newtype ContainerList _
Generic ContainerList _
Show ContainerList
Decode ContainerList
Encode ContainerList
```

#### `ContainerListLimit`

``` purescript
newtype ContainerListLimit
  = ContainerListLimit Int
```

##### Instances
``` purescript
Newtype ContainerListLimit _
Generic ContainerListLimit _
Show ContainerListLimit
Decode ContainerListLimit
Encode ContainerListLimit
```

#### `ContainerName`

``` purescript
newtype ContainerName
  = ContainerName String
```

##### Instances
``` purescript
Newtype ContainerName _
Generic ContainerName _
Show ContainerName
Decode ContainerName
Encode ContainerName
```

#### `ContainerNotFoundException`

``` purescript
newtype ContainerNotFoundException
  = ContainerNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Could not perform an operation on a container that does not exist.</p>

##### Instances
``` purescript
Newtype ContainerNotFoundException _
Generic ContainerNotFoundException _
Show ContainerNotFoundException
Decode ContainerNotFoundException
Encode ContainerNotFoundException
```

#### `newContainerNotFoundException`

``` purescript
newContainerNotFoundException :: ContainerNotFoundException
```

Constructs ContainerNotFoundException from required parameters

#### `newContainerNotFoundException'`

``` purescript
newContainerNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ContainerNotFoundException
```

Constructs ContainerNotFoundException's fields from required parameters

#### `ContainerPolicy`

``` purescript
newtype ContainerPolicy
  = ContainerPolicy String
```

##### Instances
``` purescript
Newtype ContainerPolicy _
Generic ContainerPolicy _
Show ContainerPolicy
Decode ContainerPolicy
Encode ContainerPolicy
```

#### `ContainerStatus`

``` purescript
newtype ContainerStatus
  = ContainerStatus String
```

##### Instances
``` purescript
Newtype ContainerStatus _
Generic ContainerStatus _
Show ContainerStatus
Decode ContainerStatus
Encode ContainerStatus
```

#### `CorsPolicy`

``` purescript
newtype CorsPolicy
  = CorsPolicy (Array CorsRule)
```

<p>The CORS policy of the container. </p>

##### Instances
``` purescript
Newtype CorsPolicy _
Generic CorsPolicy _
Show CorsPolicy
Decode CorsPolicy
Encode CorsPolicy
```

#### `CorsPolicyNotFoundException`

``` purescript
newtype CorsPolicyNotFoundException
  = CorsPolicyNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Could not perform an operation on a policy that does not exist.</p>

##### Instances
``` purescript
Newtype CorsPolicyNotFoundException _
Generic CorsPolicyNotFoundException _
Show CorsPolicyNotFoundException
Decode CorsPolicyNotFoundException
Encode CorsPolicyNotFoundException
```

#### `newCorsPolicyNotFoundException`

``` purescript
newCorsPolicyNotFoundException :: CorsPolicyNotFoundException
```

Constructs CorsPolicyNotFoundException from required parameters

#### `newCorsPolicyNotFoundException'`

``` purescript
newCorsPolicyNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> CorsPolicyNotFoundException
```

Constructs CorsPolicyNotFoundException's fields from required parameters

#### `CorsRule`

``` purescript
newtype CorsRule
  = CorsRule { "AllowedOrigins" :: NullOrUndefined (AllowedOrigins), "AllowedMethods" :: NullOrUndefined (AllowedMethods), "AllowedHeaders" :: NullOrUndefined (AllowedHeaders), "MaxAgeSeconds" :: NullOrUndefined (MaxAgeSeconds), "ExposeHeaders" :: NullOrUndefined (ExposeHeaders) }
```

<p>A rule for a CORS policy. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p>

##### Instances
``` purescript
Newtype CorsRule _
Generic CorsRule _
Show CorsRule
Decode CorsRule
Encode CorsRule
```

#### `newCorsRule`

``` purescript
newCorsRule :: CorsRule
```

Constructs CorsRule from required parameters

#### `newCorsRule'`

``` purescript
newCorsRule' :: ({ "AllowedOrigins" :: NullOrUndefined (AllowedOrigins), "AllowedMethods" :: NullOrUndefined (AllowedMethods), "AllowedHeaders" :: NullOrUndefined (AllowedHeaders), "MaxAgeSeconds" :: NullOrUndefined (MaxAgeSeconds), "ExposeHeaders" :: NullOrUndefined (ExposeHeaders) } -> { "AllowedOrigins" :: NullOrUndefined (AllowedOrigins), "AllowedMethods" :: NullOrUndefined (AllowedMethods), "AllowedHeaders" :: NullOrUndefined (AllowedHeaders), "MaxAgeSeconds" :: NullOrUndefined (MaxAgeSeconds), "ExposeHeaders" :: NullOrUndefined (ExposeHeaders) }) -> CorsRule
```

Constructs CorsRule's fields from required parameters

#### `CreateContainerInput`

``` purescript
newtype CreateContainerInput
  = CreateContainerInput { "ContainerName" :: ContainerName }
```

##### Instances
``` purescript
Newtype CreateContainerInput _
Generic CreateContainerInput _
Show CreateContainerInput
Decode CreateContainerInput
Encode CreateContainerInput
```

#### `newCreateContainerInput`

``` purescript
newCreateContainerInput :: ContainerName -> CreateContainerInput
```

Constructs CreateContainerInput from required parameters

#### `newCreateContainerInput'`

``` purescript
newCreateContainerInput' :: ContainerName -> ({ "ContainerName" :: ContainerName } -> { "ContainerName" :: ContainerName }) -> CreateContainerInput
```

Constructs CreateContainerInput's fields from required parameters

#### `CreateContainerOutput`

``` purescript
newtype CreateContainerOutput
  = CreateContainerOutput { "Container" :: Container }
```

##### Instances
``` purescript
Newtype CreateContainerOutput _
Generic CreateContainerOutput _
Show CreateContainerOutput
Decode CreateContainerOutput
Encode CreateContainerOutput
```

#### `newCreateContainerOutput`

``` purescript
newCreateContainerOutput :: Container -> CreateContainerOutput
```

Constructs CreateContainerOutput from required parameters

#### `newCreateContainerOutput'`

``` purescript
newCreateContainerOutput' :: Container -> ({ "Container" :: Container } -> { "Container" :: Container }) -> CreateContainerOutput
```

Constructs CreateContainerOutput's fields from required parameters

#### `DeleteContainerInput`

``` purescript
newtype DeleteContainerInput
  = DeleteContainerInput { "ContainerName" :: ContainerName }
```

##### Instances
``` purescript
Newtype DeleteContainerInput _
Generic DeleteContainerInput _
Show DeleteContainerInput
Decode DeleteContainerInput
Encode DeleteContainerInput
```

#### `newDeleteContainerInput`

``` purescript
newDeleteContainerInput :: ContainerName -> DeleteContainerInput
```

Constructs DeleteContainerInput from required parameters

#### `newDeleteContainerInput'`

``` purescript
newDeleteContainerInput' :: ContainerName -> ({ "ContainerName" :: ContainerName } -> { "ContainerName" :: ContainerName }) -> DeleteContainerInput
```

Constructs DeleteContainerInput's fields from required parameters

#### `DeleteContainerOutput`

``` purescript
newtype DeleteContainerOutput
  = DeleteContainerOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteContainerOutput _
Generic DeleteContainerOutput _
Show DeleteContainerOutput
Decode DeleteContainerOutput
Encode DeleteContainerOutput
```

#### `DeleteContainerPolicyInput`

``` purescript
newtype DeleteContainerPolicyInput
  = DeleteContainerPolicyInput { "ContainerName" :: ContainerName }
```

##### Instances
``` purescript
Newtype DeleteContainerPolicyInput _
Generic DeleteContainerPolicyInput _
Show DeleteContainerPolicyInput
Decode DeleteContainerPolicyInput
Encode DeleteContainerPolicyInput
```

#### `newDeleteContainerPolicyInput`

``` purescript
newDeleteContainerPolicyInput :: ContainerName -> DeleteContainerPolicyInput
```

Constructs DeleteContainerPolicyInput from required parameters

#### `newDeleteContainerPolicyInput'`

``` purescript
newDeleteContainerPolicyInput' :: ContainerName -> ({ "ContainerName" :: ContainerName } -> { "ContainerName" :: ContainerName }) -> DeleteContainerPolicyInput
```

Constructs DeleteContainerPolicyInput's fields from required parameters

#### `DeleteContainerPolicyOutput`

``` purescript
newtype DeleteContainerPolicyOutput
  = DeleteContainerPolicyOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteContainerPolicyOutput _
Generic DeleteContainerPolicyOutput _
Show DeleteContainerPolicyOutput
Decode DeleteContainerPolicyOutput
Encode DeleteContainerPolicyOutput
```

#### `DeleteCorsPolicyInput`

``` purescript
newtype DeleteCorsPolicyInput
  = DeleteCorsPolicyInput { "ContainerName" :: ContainerName }
```

##### Instances
``` purescript
Newtype DeleteCorsPolicyInput _
Generic DeleteCorsPolicyInput _
Show DeleteCorsPolicyInput
Decode DeleteCorsPolicyInput
Encode DeleteCorsPolicyInput
```

#### `newDeleteCorsPolicyInput`

``` purescript
newDeleteCorsPolicyInput :: ContainerName -> DeleteCorsPolicyInput
```

Constructs DeleteCorsPolicyInput from required parameters

#### `newDeleteCorsPolicyInput'`

``` purescript
newDeleteCorsPolicyInput' :: ContainerName -> ({ "ContainerName" :: ContainerName } -> { "ContainerName" :: ContainerName }) -> DeleteCorsPolicyInput
```

Constructs DeleteCorsPolicyInput's fields from required parameters

#### `DeleteCorsPolicyOutput`

``` purescript
newtype DeleteCorsPolicyOutput
  = DeleteCorsPolicyOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteCorsPolicyOutput _
Generic DeleteCorsPolicyOutput _
Show DeleteCorsPolicyOutput
Decode DeleteCorsPolicyOutput
Encode DeleteCorsPolicyOutput
```

#### `DescribeContainerInput`

``` purescript
newtype DescribeContainerInput
  = DescribeContainerInput { "ContainerName" :: NullOrUndefined (ContainerName) }
```

##### Instances
``` purescript
Newtype DescribeContainerInput _
Generic DescribeContainerInput _
Show DescribeContainerInput
Decode DescribeContainerInput
Encode DescribeContainerInput
```

#### `newDescribeContainerInput`

``` purescript
newDescribeContainerInput :: DescribeContainerInput
```

Constructs DescribeContainerInput from required parameters

#### `newDescribeContainerInput'`

``` purescript
newDescribeContainerInput' :: ({ "ContainerName" :: NullOrUndefined (ContainerName) } -> { "ContainerName" :: NullOrUndefined (ContainerName) }) -> DescribeContainerInput
```

Constructs DescribeContainerInput's fields from required parameters

#### `DescribeContainerOutput`

``` purescript
newtype DescribeContainerOutput
  = DescribeContainerOutput { "Container" :: NullOrUndefined (Container) }
```

##### Instances
``` purescript
Newtype DescribeContainerOutput _
Generic DescribeContainerOutput _
Show DescribeContainerOutput
Decode DescribeContainerOutput
Encode DescribeContainerOutput
```

#### `newDescribeContainerOutput`

``` purescript
newDescribeContainerOutput :: DescribeContainerOutput
```

Constructs DescribeContainerOutput from required parameters

#### `newDescribeContainerOutput'`

``` purescript
newDescribeContainerOutput' :: ({ "Container" :: NullOrUndefined (Container) } -> { "Container" :: NullOrUndefined (Container) }) -> DescribeContainerOutput
```

Constructs DescribeContainerOutput's fields from required parameters

#### `Endpoint`

``` purescript
newtype Endpoint
  = Endpoint String
```

##### Instances
``` purescript
Newtype Endpoint _
Generic Endpoint _
Show Endpoint
Decode Endpoint
Encode Endpoint
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExposeHeaders`

``` purescript
newtype ExposeHeaders
  = ExposeHeaders (Array Header)
```

##### Instances
``` purescript
Newtype ExposeHeaders _
Generic ExposeHeaders _
Show ExposeHeaders
Decode ExposeHeaders
Encode ExposeHeaders
```

#### `GetContainerPolicyInput`

``` purescript
newtype GetContainerPolicyInput
  = GetContainerPolicyInput { "ContainerName" :: ContainerName }
```

##### Instances
``` purescript
Newtype GetContainerPolicyInput _
Generic GetContainerPolicyInput _
Show GetContainerPolicyInput
Decode GetContainerPolicyInput
Encode GetContainerPolicyInput
```

#### `newGetContainerPolicyInput`

``` purescript
newGetContainerPolicyInput :: ContainerName -> GetContainerPolicyInput
```

Constructs GetContainerPolicyInput from required parameters

#### `newGetContainerPolicyInput'`

``` purescript
newGetContainerPolicyInput' :: ContainerName -> ({ "ContainerName" :: ContainerName } -> { "ContainerName" :: ContainerName }) -> GetContainerPolicyInput
```

Constructs GetContainerPolicyInput's fields from required parameters

#### `GetContainerPolicyOutput`

``` purescript
newtype GetContainerPolicyOutput
  = GetContainerPolicyOutput { "Policy" :: ContainerPolicy }
```

##### Instances
``` purescript
Newtype GetContainerPolicyOutput _
Generic GetContainerPolicyOutput _
Show GetContainerPolicyOutput
Decode GetContainerPolicyOutput
Encode GetContainerPolicyOutput
```

#### `newGetContainerPolicyOutput`

``` purescript
newGetContainerPolicyOutput :: ContainerPolicy -> GetContainerPolicyOutput
```

Constructs GetContainerPolicyOutput from required parameters

#### `newGetContainerPolicyOutput'`

``` purescript
newGetContainerPolicyOutput' :: ContainerPolicy -> ({ "Policy" :: ContainerPolicy } -> { "Policy" :: ContainerPolicy }) -> GetContainerPolicyOutput
```

Constructs GetContainerPolicyOutput's fields from required parameters

#### `GetCorsPolicyInput`

``` purescript
newtype GetCorsPolicyInput
  = GetCorsPolicyInput { "ContainerName" :: ContainerName }
```

##### Instances
``` purescript
Newtype GetCorsPolicyInput _
Generic GetCorsPolicyInput _
Show GetCorsPolicyInput
Decode GetCorsPolicyInput
Encode GetCorsPolicyInput
```

#### `newGetCorsPolicyInput`

``` purescript
newGetCorsPolicyInput :: ContainerName -> GetCorsPolicyInput
```

Constructs GetCorsPolicyInput from required parameters

#### `newGetCorsPolicyInput'`

``` purescript
newGetCorsPolicyInput' :: ContainerName -> ({ "ContainerName" :: ContainerName } -> { "ContainerName" :: ContainerName }) -> GetCorsPolicyInput
```

Constructs GetCorsPolicyInput's fields from required parameters

#### `GetCorsPolicyOutput`

``` purescript
newtype GetCorsPolicyOutput
  = GetCorsPolicyOutput { "CorsPolicy" :: CorsPolicy }
```

##### Instances
``` purescript
Newtype GetCorsPolicyOutput _
Generic GetCorsPolicyOutput _
Show GetCorsPolicyOutput
Decode GetCorsPolicyOutput
Encode GetCorsPolicyOutput
```

#### `newGetCorsPolicyOutput`

``` purescript
newGetCorsPolicyOutput :: CorsPolicy -> GetCorsPolicyOutput
```

Constructs GetCorsPolicyOutput from required parameters

#### `newGetCorsPolicyOutput'`

``` purescript
newGetCorsPolicyOutput' :: CorsPolicy -> ({ "CorsPolicy" :: CorsPolicy } -> { "CorsPolicy" :: CorsPolicy }) -> GetCorsPolicyOutput
```

Constructs GetCorsPolicyOutput's fields from required parameters

#### `Header`

``` purescript
newtype Header
  = Header String
```

##### Instances
``` purescript
Newtype Header _
Generic Header _
Show Header
Decode Header
Encode Header
```

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The service is temporarily unavailable.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `newInternalServerError`

``` purescript
newInternalServerError :: InternalServerError
```

Constructs InternalServerError from required parameters

#### `newInternalServerError'`

``` purescript
newInternalServerError' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InternalServerError
```

Constructs InternalServerError's fields from required parameters

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>A service limit has been exceeded.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListContainersInput`

``` purescript
newtype ListContainersInput
  = ListContainersInput { "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ContainerListLimit) }
```

##### Instances
``` purescript
Newtype ListContainersInput _
Generic ListContainersInput _
Show ListContainersInput
Decode ListContainersInput
Encode ListContainersInput
```

#### `newListContainersInput`

``` purescript
newListContainersInput :: ListContainersInput
```

Constructs ListContainersInput from required parameters

#### `newListContainersInput'`

``` purescript
newListContainersInput' :: ({ "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ContainerListLimit) } -> { "NextToken" :: NullOrUndefined (PaginationToken), "MaxResults" :: NullOrUndefined (ContainerListLimit) }) -> ListContainersInput
```

Constructs ListContainersInput's fields from required parameters

#### `ListContainersOutput`

``` purescript
newtype ListContainersOutput
  = ListContainersOutput { "Containers" :: ContainerList, "NextToken" :: NullOrUndefined (PaginationToken) }
```

##### Instances
``` purescript
Newtype ListContainersOutput _
Generic ListContainersOutput _
Show ListContainersOutput
Decode ListContainersOutput
Encode ListContainersOutput
```

#### `newListContainersOutput`

``` purescript
newListContainersOutput :: ContainerList -> ListContainersOutput
```

Constructs ListContainersOutput from required parameters

#### `newListContainersOutput'`

``` purescript
newListContainersOutput' :: ContainerList -> ({ "Containers" :: ContainerList, "NextToken" :: NullOrUndefined (PaginationToken) } -> { "Containers" :: ContainerList, "NextToken" :: NullOrUndefined (PaginationToken) }) -> ListContainersOutput
```

Constructs ListContainersOutput's fields from required parameters

#### `MaxAgeSeconds`

``` purescript
newtype MaxAgeSeconds
  = MaxAgeSeconds Int
```

##### Instances
``` purescript
Newtype MaxAgeSeconds _
Generic MaxAgeSeconds _
Show MaxAgeSeconds
Decode MaxAgeSeconds
Encode MaxAgeSeconds
```

#### `MethodName`

``` purescript
newtype MethodName
  = MethodName String
```

##### Instances
``` purescript
Newtype MethodName _
Generic MethodName _
Show MethodName
Decode MethodName
Encode MethodName
```

#### `Origin`

``` purescript
newtype Origin
  = Origin String
```

##### Instances
``` purescript
Newtype Origin _
Generic Origin _
Show Origin
Decode Origin
Encode Origin
```

#### `PaginationToken`

``` purescript
newtype PaginationToken
  = PaginationToken String
```

##### Instances
``` purescript
Newtype PaginationToken _
Generic PaginationToken _
Show PaginationToken
Decode PaginationToken
Encode PaginationToken
```

#### `PolicyNotFoundException`

``` purescript
newtype PolicyNotFoundException
  = PolicyNotFoundException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>Could not perform an operation on a policy that does not exist.</p>

##### Instances
``` purescript
Newtype PolicyNotFoundException _
Generic PolicyNotFoundException _
Show PolicyNotFoundException
Decode PolicyNotFoundException
Encode PolicyNotFoundException
```

#### `newPolicyNotFoundException`

``` purescript
newPolicyNotFoundException :: PolicyNotFoundException
```

Constructs PolicyNotFoundException from required parameters

#### `newPolicyNotFoundException'`

``` purescript
newPolicyNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> PolicyNotFoundException
```

Constructs PolicyNotFoundException's fields from required parameters

#### `PutContainerPolicyInput`

``` purescript
newtype PutContainerPolicyInput
  = PutContainerPolicyInput { "ContainerName" :: ContainerName, "Policy" :: ContainerPolicy }
```

##### Instances
``` purescript
Newtype PutContainerPolicyInput _
Generic PutContainerPolicyInput _
Show PutContainerPolicyInput
Decode PutContainerPolicyInput
Encode PutContainerPolicyInput
```

#### `newPutContainerPolicyInput`

``` purescript
newPutContainerPolicyInput :: ContainerName -> ContainerPolicy -> PutContainerPolicyInput
```

Constructs PutContainerPolicyInput from required parameters

#### `newPutContainerPolicyInput'`

``` purescript
newPutContainerPolicyInput' :: ContainerName -> ContainerPolicy -> ({ "ContainerName" :: ContainerName, "Policy" :: ContainerPolicy } -> { "ContainerName" :: ContainerName, "Policy" :: ContainerPolicy }) -> PutContainerPolicyInput
```

Constructs PutContainerPolicyInput's fields from required parameters

#### `PutContainerPolicyOutput`

``` purescript
newtype PutContainerPolicyOutput
  = PutContainerPolicyOutput NoArguments
```

##### Instances
``` purescript
Newtype PutContainerPolicyOutput _
Generic PutContainerPolicyOutput _
Show PutContainerPolicyOutput
Decode PutContainerPolicyOutput
Encode PutContainerPolicyOutput
```

#### `PutCorsPolicyInput`

``` purescript
newtype PutCorsPolicyInput
  = PutCorsPolicyInput { "ContainerName" :: ContainerName, "CorsPolicy" :: CorsPolicy }
```

##### Instances
``` purescript
Newtype PutCorsPolicyInput _
Generic PutCorsPolicyInput _
Show PutCorsPolicyInput
Decode PutCorsPolicyInput
Encode PutCorsPolicyInput
```

#### `newPutCorsPolicyInput`

``` purescript
newPutCorsPolicyInput :: ContainerName -> CorsPolicy -> PutCorsPolicyInput
```

Constructs PutCorsPolicyInput from required parameters

#### `newPutCorsPolicyInput'`

``` purescript
newPutCorsPolicyInput' :: ContainerName -> CorsPolicy -> ({ "ContainerName" :: ContainerName, "CorsPolicy" :: CorsPolicy } -> { "ContainerName" :: ContainerName, "CorsPolicy" :: CorsPolicy }) -> PutCorsPolicyInput
```

Constructs PutCorsPolicyInput's fields from required parameters

#### `PutCorsPolicyOutput`

``` purescript
newtype PutCorsPolicyOutput
  = PutCorsPolicyOutput NoArguments
```

##### Instances
``` purescript
Newtype PutCorsPolicyOutput _
Generic PutCorsPolicyOutput _
Show PutCorsPolicyOutput
Decode PutCorsPolicyOutput
Encode PutCorsPolicyOutput
```

#### `TimeStamp`

``` purescript
newtype TimeStamp
  = TimeStamp Timestamp
```

##### Instances
``` purescript
Newtype TimeStamp _
Generic TimeStamp _
Show TimeStamp
Decode TimeStamp
Encode TimeStamp
```


