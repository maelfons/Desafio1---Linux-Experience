#!/bin/bash

echo "Criando Usuarios massivos"

useradd guest11 -c "Usuario Convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest11 -e

useradd guest12 -c "Usuario Convidado2" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest12 -e

useradd guest13 -c "Usuario Convidado3" -s /bin/bash -m> -p $(openssl passwd -6 Senha123)
passwd guest13 -e

echo "Finalizado"
