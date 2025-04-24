# 🏰 Inception — 42 Porto

> A Docker-based system administration project from the 42 curriculum

---

## 📦 Overview

Inception is a system architecture project designed to help you understand **Docker**, **container orchestration**, and **basic DevOps concepts** by building a WordPress website with a MariaDB database, all served behind an NGINX reverse proxy with SSL.

All services are built from scratch with custom `Dockerfiles`, connected using Docker Compose.

---

## ⚙️ Services

- 🔐 **NGINX** — SSL-secured reverse proxy  
- 📝 **WordPress** — Blog/content management system  
- 🛢️ **MariaDB** — Relational database for WordPress

---

## 📁 Project Structure

```bash
.
├── requirements/
│   ├── nginx/
│   ├── wordpress/
│   └── mariadb/
├── docker-compose.yml
├── Makefile
└── .env (❗ not included)
```

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/<your-username>/inception.git
cd inception
```

### 2. Set up your .env file

⚠️ The .env file is excluded from the repo for security reasons. You'll need to create it yourself in the root directory.

### 3. Run the project

This project is managed via a Makefile, allowing you to build and run everything easily:

  🛠️ Build and start all containers:
      
    make

  🧹 Stop and remove all containers, volumes, and networks:

    make clean_all

## 🗃️ Volumes

Persistent data is stored using Docker bind mounts:
Container	Volume Mount Path
WordPress	/home/your-user/data/wordpress
MariaDB	/home/your-user/data/mariadb

Ensure these directories exist or are properly created by the Makefile.

## 🧰 Built With

- 🐳 [Docker](https://www.docker.com/)
- 📦 [Docker Compose](https://docs.docker.com/compose/)
- 🌐 [NGINX](https://nginx.org/)
- 📝 [WordPress](https://wordpress.org/)
- 🛢️ [MariaDB](https://mariadb.org/)

## 🙌 Thanks for checking it out!

Feel free to explore, fork, and improve.
