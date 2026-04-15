# Lab IaC - Docker + Terraform

## 📌 Descripción

Este proyecto crea una arquitectura usando **Terraform** y **Docker** con tres servicios:

* Frontend (Nginx)
* Backend (Node.js)
* Base de datos (MySQL)

Se implementan dos entornos:

* Producción
* Desarrollo (DEV)

---

## ⚙️ Requisitos

* Docker instalado
* Terraform instalado

---

## 🚀 Cómo ejecutar

1. Entrar a la carpeta `iac`:

```bash
cd iac
```

2. Inicializar Terraform:

```bash
terraform init
```

3. Levantar todo:

```bash
terraform apply
```

Escribir `yes` cuando lo pida.

---

## 🌐 Puertos

### Producción

* Frontend → http://localhost:4001
* Backend → http://localhost:4002
* Base de datos → 4003

### Desarrollo (DEV)

* Frontend → http://localhost:5001
* Backend → http://localhost:5002
* Base de datos → 5003

---

## 🧪 Cómo probar

1. Abrir el frontend (4001 o 5001)
2. Hacer clic en **"Probar Backend"**
3. Ver la respuesta del backend

---

## 🧹 Eliminar todo

```bash
terraform destroy
```

---

## 🧠 Notas

* Los puertos **4003 y 5003** son de MySQL → no funcionan en navegador
* Nginx conecta el frontend con el backend
* Todos los servicios están en la misma red Docker

---
## ⚠️ Archivo tfvars

El archivo terraform.tfvars no se incluye por seguridad.
Se debe crear manualmente basado en terraform.tfvars.example.