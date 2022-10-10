# terraform-aws-glue-job
The standardized AWS glue job module

## Usage
<pre><code>module "this" {
  source = "github.com/lucidus-solutions/terraform-aws-glue-job"

  app               = 
  program           =
  env               =
  description       = 
  role_arn          =
  glue_version      =
  execution_class   =
  max_retries       = 
  timeout           = 
  worker_type       = 
  number_of_workers = 
  script_location   = 
  default_arguments = 
}</code></pre>