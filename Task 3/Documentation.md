## 📦 Modules

- The project is divided into three modules: `vpc`, `subnet`, and `ec2`.  
- Each module has its own `main.tf`, `variables.tf`, and `outputs.tf` files.  
- This modular structure keeps the configurations organized and reusable.  

---

## 🛠️ Main Configuration (`main.tf`)

- The root `main.tf` file calls each module and passes necessary inputs.  
- This is where all modules are brought together to deploy the complete infrastructure.  

---

## 📝 Variables and Outputs

- `variables.tf` defines input variables for each module and the root module.  
- `outputs.tf` collects and prints important information like VPC ID, Subnet IDs, and EC2 Instance IDs after deployment.  

---

## 🌐 Provider Configuration (`provider.tf`)

- Contains AWS provider setup with the region and credentials configuration.  

---

## 🚀 Deployment Flow

- **Initialize:** Downloads the module dependencies.  
- **Validate:** Checks the config for syntax and logical errors.  
- **Plan:** Shows the deployment plan before applying it.  
- **Apply:** Deploys the resources as per the plan.  
- **Destroy:** Cleans up all resources created.  
