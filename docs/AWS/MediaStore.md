## Module AWS.MediaStore

<p>An AWS Elemental MediaStore container is a namespace that holds folders and objects. You use a container endpoint to create, read, and delete objects. </p>

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


