# login-app

.
├── app/
│   ├── Dockerfile
│   ├── package.json
│   ├── src/
│   │   ├── server.js
│   │   └── db.js
│   └── public/login.html
├── terraform/
│   ├── versions.tf
│   ├── providers.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml        # optional (ALB Ingress Controller or NLB)
│   └── namespace.yaml
└── .github/workflows/
    ├── ci.yml
    ├── infra.yml
    └── cd.yml
