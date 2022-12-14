# Nitro.js Starter Template

Nitro.js starter template with jest, ci/cd on aws, and lambda functions.

## Deploy infrastructure

1. Go to AWS Cloudformation, upload the /infrastructure/stack.yml and deploy.
2. The stack will output a IAMPolicy. Get that name.
3. Go to IAM and create a new user called "github-actions"
4. Enable "Access key - Programmatic access"
5. On Permissions select "Attach existing policies directly"
6. Attach the policy that was created on the stack.
7. Copy the Access key id and the secret access key.
8. Create a new file called ".env" and paste these two keys.

```
AWS_ACCESS_KEY_ID={{}}
AWS_SECRET_ACCESS_KEY={{}}
```

Before commiting any changes in this repository configure github actions:

1. Go to Repository Settings / Secrets / Actions and click on "New repository secret".
2. Add a new secret called "AWS_ACCESS_KEY_ID" with your AWS access key id.
3. Add a new secret called "AWS_SECRET_ACCESS_KEY" with your AWS secret access key.

## Setting environment variables

1. Go to Systems Manager > ParameterStore
2. Add a parameter with the next key: `/:stackName/:environmentName/:key`. For example, if you want to create a variable called "DOMAIN_NAME" on the stack "SERVER" in the environment "PROD", the key will be: `/SERVER/PRO/DOMAIN_NAME`.

## Clone and install

Clone this repository and run `npm i` to install dependencies.


## Project Stats

![Alt](https://repobeats.axiom.co/api/embed/d0fa04d66cca5f2d9c166ba3bb395283a217dbfd.svg "Repobeats analytics image")
