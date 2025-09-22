Numération binaire / hexadécimal & conversions

1.Définitions clés
 Bit : plus petite unité d’information, peut valoir 0 ou 1
 Octet (Byte) : groupe de 8 bits. Exemple : 01010111

 Base : système de numération:
   Binaire → base 2 (chiffres possibles : 0,1)
   Décimal → base 10 (chiffres 0–9)
   Hexadécimal → base 16 (chiffres 0–9 et A–F)

 Nibble : demi-octet = 4 bits = 1 chiffre hexadécimal

 MSB / LSB :
 MSB (Most Significant Bit) → bit de poids fort (à gauche)
 LSB (Least Significant Bit) → bit de poids faible (à droite)

 Notation :
 0b1010 (binaire)
 173 (décimal)
 0xAD (hexadécimal)

2. Tableau de correspondance:

 | Décimal | Binaire | Hexa |
| ------- | ------- | ---- |
| 0       | 0000    | 0    |
| 1       | 0001    | 1    |
| 2       | 0010    | 2    |
| 3       | 0011    | 3    |
| 4       | 0100    | 4    |
| 5       | 0101    | 5    |
| 6       | 0110    | 6    |
| 7       | 0111    | 7    |
| 8       | 1000    | 8    |
| 9       | 1001    | 9    |
| 10      | 1010    | A    |
| 11      | 1011    | B    |
| 12      | 1100    | C    |
| 13      | 1101    | D    |
| 14      | 1110    | E    |
| 15      | 1111    | F    |

3. Méthodes de conversion
     Décimal → Binaire

Diviser le nombre par 2, noter le reste.

Continuer jusqu’à obtenir 0.

Lire les restes de bas en haut.
    Exemple : 13 → 1101₂


Binaire → Décimal
Multiplier chaque bit par la puissance de 2 correspondante.

Additionner.
👉 Exemple : 1011₂ = 1×8 + 0×4 + 1×2 + 1×1 = 11


Binaire ↔ Hexadécimal
Grouper les bits en paquets de 4 (nibbles).

Convertir chaque groupe avec le tableau.
👉 Exemple : 10101111₂ = 0xAF


Décimal → Hexadécimal
Diviser le nombre par 16.

Lire les restes de bas en haut.
👉 Exemple : 173 → 0xAD


 Opérateurs

 1. Définitions clés

Bit : plus petite unité (0 ou 1).

Octet (Byte) : groupe de 8 bits.

Masque (mask) : valeur binaire utilisée pour tester ou modifier certains bits.

LSB / MSB : bit de poids faible (droite) / fort (gauche).




2. Opérateurs bit à bit
Opérateur	Nom	Effet (sur 1 bit)
&	AND	1 si les deux sont 1
`	`	OR
^	XOR	1 si différent
~	NOT	inverse le bit

⚠️ Différence entre && / || (logiques) et & / | (bit à bit).




3. Décalages (Shifts)

x << n : décale à gauche → multiplie par 2^n.

x >> n : décale à droite → divise par 2^n.

Logique : ajoute des 0.

Arithmétique : conserve le signe (bits de gauche copiés).



4. Masques pratiques

Tester un bit : if (flags & (1 << k)) ...

Poser un bit : flags |= (1 << k)

Retirer un bit : flags &= ~(1 << k)

Basculer un bit : flags ^= (1 << k)

Extraire un champ : (val >> s) & mask
