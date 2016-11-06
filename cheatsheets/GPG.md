-- CREATION -- 
gpg --gen-key
gpg --armor --export REFKEY 						# Public
gpg --armor --output FICHIER_priv.asc --export-secret-key REFKEY 	# Private
gpg --gen-revoke REFKEY 						# Revoke


-- GESTION --
gpg --list-keys
gpg --list-secret-keys
gpg --import REFKEY 				# Importé clé publique
gpg --import REVOKE 				# Importer certif. revoke
gpg --delete-keys REFKEY 			# Supprimer clé publique
gpg --delete-secret-keys REFKEY 		# Supprimer clé privée


-- EXPERT --
gpg --homedir /media/rom-usb/.gnupg -d myfile 	# Utiliser une copie dans une autre répertoire que .gpg
# On peut combine les PEM avant de créer le certificat openssl.



-- Sources --
https://tetsumaki.net/blog/article/2014-03-01-quelques-commandes-gnupg.html
http://wiki.cacert.org/ConvertingPgpKeyToCertificate
http://security.stackexchange.com/questions/9633/how-can-i-convert-my-encypted-pgp-secret-key-for-use-performing-ssh-authenticati
http://stackoverflow.com/questions/19704950/load-multiple-certificates-into-pkcs12-with-openssl
