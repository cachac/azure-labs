# Azure-labs <!-- omit in toc -->
Laboratorios para prácticas en Azure

# 1. Virtual machine
## 1.1. Basics
- Create Azure Virtual Machine
- Resourse group: rg-<CURSO>-<ESTUDIANTE>
- Name: vm<CURSO><ESTUDIANTE>
- Region: East US
- Image: Ubuntu server 22.04 LTS - x64 Gen2
- Size: Standard_B2s - 2vcpus, 4 GiB memory ($30/mo)

# 2. Review + create
- Create
- Download private key and create resource

# 3. Accesos
## 3.1. Networking (VM)
- Network settings
- Create port rule
  - Inbound
  - Destination port ranges: *
  - Protocol: any
  - Action: Allow
  - Priority: 100

# 4. Conectar a la terminal
- Goto resource
## 4.1. Overview
- Copiar la IP pública

## 4.2. Connect Azure CLI (Portal)
- Connect
- SSH using Azure CLI

## 4.3. Opcional SSH por terminal
```
ssh -i <KEY>.pem azureuser@<PUBLIC_IP>
```

# 5. Setup lab








security group
