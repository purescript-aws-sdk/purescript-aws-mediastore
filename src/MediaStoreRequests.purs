
module AWS.MediaStore.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MediaStore as MediaStore
import AWS.MediaStore.Types as MediaStoreTypes


-- | <p>Creates a storage container to hold objects. A container is similar to a bucket in the Amazon S3 service.</p>
createContainer :: forall eff. MediaStore.Service -> MediaStoreTypes.CreateContainerInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.CreateContainerOutput
createContainer (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createContainer"


-- | <p>Deletes the specified container. Before you make a <code>DeleteContainer</code> request, delete any objects in the container or in any folders in the container. You can delete only empty containers. </p>
deleteContainer :: forall eff. MediaStore.Service -> MediaStoreTypes.DeleteContainerInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.DeleteContainerOutput
deleteContainer (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteContainer"


-- | <p>Deletes the access policy that is associated with the specified container.</p>
deleteContainerPolicy :: forall eff. MediaStore.Service -> MediaStoreTypes.DeleteContainerPolicyInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.DeleteContainerPolicyOutput
deleteContainerPolicy (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteContainerPolicy"


-- | <p>Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container.</p> <p>To use this operation, you must have permission to perform the <code>MediaStore:DeleteCorsPolicy</code> action. The container owner has this permission by default and can grant this permission to others.</p>
deleteCorsPolicy :: forall eff. MediaStore.Service -> MediaStoreTypes.DeleteCorsPolicyInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.DeleteCorsPolicyOutput
deleteCorsPolicy (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCorsPolicy"


-- | <p>Retrieves the properties of the requested container. This request is commonly used to retrieve the endpoint of a container. An endpoint is a value assigned by the service when a new container is created. A container's endpoint does not change after it has been assigned. The <code>DescribeContainer</code> request returns a single <code>Container</code> object based on <code>ContainerName</code>. To return all <code>Container</code> objects that are associated with a specified AWS account, use <a>ListContainers</a>.</p>
describeContainer :: forall eff. MediaStore.Service -> MediaStoreTypes.DescribeContainerInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.DescribeContainerOutput
describeContainer (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeContainer"


-- | <p>Retrieves the access policy for the specified container. For information about the data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User Guide</a>.</p>
getContainerPolicy :: forall eff. MediaStore.Service -> MediaStoreTypes.GetContainerPolicyInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.GetContainerPolicyOutput
getContainerPolicy (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getContainerPolicy"


-- | <p>Returns the cross-origin resource sharing (CORS) configuration information that is set for the container.</p> <p>To use this operation, you must have permission to perform the <code>MediaStore:GetCorsPolicy</code> action. By default, the container owner has this permission and can grant it to others.</p>
getCorsPolicy :: forall eff. MediaStore.Service -> MediaStoreTypes.GetCorsPolicyInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.GetCorsPolicyOutput
getCorsPolicy (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getCorsPolicy"


-- | <p>Lists the properties of all containers in AWS Elemental MediaStore. </p> <p>You can query to receive all the containers in one response. Or you can include the <code>MaxResults</code> parameter to receive a limited number of containers in each response. In this case, the response includes a token. To get the next set of containers, send the command again, this time with the <code>NextToken</code> parameter (with the returned token as its value). The next set of responses appears, with a token if there are still more containers to receive. </p> <p>See also <a>DescribeContainer</a>, which gets the properties of one container. </p>
listContainers :: forall eff. MediaStore.Service -> MediaStoreTypes.ListContainersInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.ListContainersOutput
listContainers (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listContainers"


-- | <p>Creates an access policy for the specified container to restrict the users and clients that can access it. For information about the data that is included in an access policy, see the <a href="https://aws.amazon.com/documentation/iam/">AWS Identity and Access Management User Guide</a>.</p> <p>For this release of the REST API, you can create only one policy for a container. If you enter <code>PutContainerPolicy</code> twice, the second command modifies the existing policy. </p>
putContainerPolicy :: forall eff. MediaStore.Service -> MediaStoreTypes.PutContainerPolicyInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.PutContainerPolicyOutput
putContainerPolicy (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putContainerPolicy"


-- | <p>Sets the cross-origin resource sharing (CORS) configuration on a container so that the container can service cross-origin requests. For example, you might want to enable a request whose origin is http://www.example.com to access your AWS Elemental MediaStore container at my.example.container.com by using the browser's XMLHttpRequest capability.</p> <p>To enable CORS on a container, you attach a CORS policy to the container. In the CORS policy, you configure rules that identify origins and the HTTP methods that can be executed on your container. The policy can contain up to 398,000 characters. You can add up to 100 rules to a CORS policy. If more than one rule applies, the service uses the first applicable rule listed.</p>
putCorsPolicy :: forall eff. MediaStore.Service -> MediaStoreTypes.PutCorsPolicyInput -> Aff (exception :: EXCEPTION | eff) MediaStoreTypes.PutCorsPolicyOutput
putCorsPolicy (MediaStore.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putCorsPolicy"
