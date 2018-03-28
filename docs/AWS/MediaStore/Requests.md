## Module AWS.MediaStore.Requests

#### `createContainer`

``` purescript
createContainer :: forall eff. Service -> CreateContainerInput -> Aff (exception :: EXCEPTION | eff) CreateContainerOutput
```

<p>Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.</p>

#### `deleteContainer`

``` purescript
deleteContainer :: forall eff. Service -> DeleteContainerInput -> Aff (exception :: EXCEPTION | eff) DeleteContainerOutput
```

<p>Deletes the specified container. Before you make a <code>DeleteContainer</code> request, delete any objects in the container or in any folders in the container. You can delete only empty containers. </p>

#### `deleteContainerPolicy`

``` purescript
deleteContainerPolicy :: forall eff. Service -> DeleteContainerPolicyInput -> Aff (exception :: EXCEPTION | eff) DeleteContainerPolicyOutput
```

<p>Deletes the access policy that is associated with the specified container.</p>

#### `deleteCorsPolicy`

``` purescript
deleteCorsPolicy :: forall eff. Service -> DeleteCorsPolicyInput -> Aff (exception :: EXCEPTION | eff) DeleteCorsPolicyOutput
```

<p>Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container.</p> <p>To use this operation, you must have permission to perform the <code>MediaStore:DeleteCorsPolicy</code> action. The container owner has this permission by default and can grant this permission to others.</p>

#### `describeContainer`

``` purescript
describeContainer :: forall eff. Service -> DescribeContainerInput -> Aff (exception :: EXCEPTION | eff) DescribeContainerOutput
```

<p>Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The <code>DescribeContainer</code> request returns a single <code>Container</code> object based on <code>ContainerName</code>. To return all <code>Container</code> objects that are associated with a specified AWS account, use <a>ListContainers</a>.</p>

#### `getContainerPolicy`

``` purescript
getContainerPolicy :: forall eff. Service -> GetContainerPolicyInput -> Aff (exception :: EXCEPTION | eff) GetContainerPolicyOutput
```

<p>Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User Guide</a>.</p>

#### `getCorsPolicy`

``` purescript
getCorsPolicy :: forall eff. Service -> GetCorsPolicyInput -> Aff (exception :: EXCEPTION | eff) GetCorsPolicyOutput
```

<p>Returns the cross-origin resource sharing (CORS) configuration information that is set for the container.</p> <p>To use this operation, you must have permission to perform the <code>MediaStore:GetCorsPolicy</code> action. By default, the container owner has this permission and can grant it to others.</p>

#### `listContainers`

``` purescript
listContainers :: forall eff. Service -> ListContainersInput -> Aff (exception :: EXCEPTION | eff) ListContainersOutput
```

<p>Lists the properties of all containers in AWS Elemental MediaStore. </p> <p>You can query to receive all the containers in one response. Or you can include the <code>MaxResults</code> parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the <code>NextToken</code> parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive. </p> <p>See also <a>DescribeContainer</a>, which gets the properties of one container. </p>

#### `putContainerPolicy`

``` purescript
putContainerPolicy :: forall eff. Service -> PutContainerPolicyInput -> Aff (exception :: EXCEPTION | eff) PutContainerPolicyOutput
```

<p>Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User Guide</a>.</p> <p>For this release of the REST API, you can create only one policy for a container. If you enter <code>PutContainerPolicy</code> twice, the second command modifies the existing policy. </p>

#### `putCorsPolicy`

``` purescript
putCorsPolicy :: forall eff. Service -> PutCorsPolicyInput -> Aff (exception :: EXCEPTION | eff) PutCorsPolicyOutput
```

<p>Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability.</p> <p>To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p>


