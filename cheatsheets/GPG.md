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

-- CHIFFRER -- 
gpg --encrypt -u me -r "Receiver User Name" somefile

-- SIGNER -- 
--- CLEARSIGN ---
gpg --local-user Bob --clearsign secret.txt 			# Clearsign (into the file)
gpg --local-user Alice --verify secret.txt.asc 			# Check

--- DETACHED ---
gpg --local-user me --detach-sign secret.txt 			# Detached sign
gpg --local-user Alice --verify secret.txt.sig 			# Check

--- ATTACHED ---
gpg --local-user me --encrypt --recipient Personal  secret.txt 		# Attached sign (/out encryption but compressed)
gpg --local-user me --encrypt --recipient Personal --sign secret.txt 	# Attached sign (/ encryption)
gpg --local-user Alice --decrypt secret.txt.gpg_private 		# Check and decrypt



-- EXPERT --
gpg --homedir /media/rom-usb/.gnupg -d myfile 	# Utiliser une copie dans une autre répertoire que .gpg
# On peut combine les PEM avant de créer le certificat openssl.



-- Sources --
https://tetsumaki.net/blog/article/2014-03-01-quelques-commandes-gnupg.html
http://wiki.cacert.org/ConvertingPgpKeyToCertificate
http://security.stackexchange.com/questions/9633/how-can-i-convert-my-encypted-pgp-secret-key-for-use-performing-ssh-authenticati
http://stackoverflow.com/questions/19704950/load-multiple-certificates-into-pkcs12-with-openssl
https://www.digitalocean.com/community/tutorials/how-to-use-gpg-to-encrypt-and-sign-messages-on-an-ubuntu-12-04-vps#how-to-make-your-public-key-highly-available
http://www.integralist.co.uk/posts/security-basics.html#7
