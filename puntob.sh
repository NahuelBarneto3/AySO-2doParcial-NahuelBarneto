echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCbAKntPetirYye2m3Y0TyriixwCt5IIA/k7j202tk7ImTOu2gI2Ml0oRzZLs0vp64tHItG3JPFgM8hRzoByLmZPhhohjhulCXecEn2b9Gdqczu40/R5LoG2mKC7H8iLCFw4QBgEKkUW9l0RHY8WoSdYIL2UosYA+X9hjUrWZpFlyhot6/HXA3+QaLjIIY3cvn8NLMEZdFCx9XUX1brveWL5NjsseoomR6VrF0FmD7RCUi4iU5rF+FvqAdrtd7Vb0ad5pQVzA1Mw/4fmog1x/FJBNMmQG9ZVMshIjGJVyK87pHVs2WEeQEx1r7fBW8JJGXxveKYCiskdgcCr7bYKqbm8DDkC2GmE3maMTnQ2XP9ObTZyMbWe3MmU62nFfI05dQRY/gRxcdONQgakRUZAK6ZhU8j19Xh4lAzNKurLiOkfJy0CxEU/A+5c/3wL9+Nr9JmW+trNVdv3ht3S3E2siF7F3Lns1oKdq2xu6zSut4gaLKnvrPQUZ5je6+2YMn4Uwc= vagrant@vmAnsible2doParcial" >> $HOME/.ssh/authorized_keys

echo "Desde la maquina nodo ejecutar el comando"
echo "ansible-playbook -i inventory playbook.yml"

sudo apt list --installed |grep apache

