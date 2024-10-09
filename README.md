
## RECOMMENDATIONS

## read_mat
        Aceasta functie citeste dintr-un fisier cu extensia .csv cu o functie
    specifica si extrage matricea fara prima linie si prima coloana.

## preprocess
        Functia preprocess ia o matrice mat si un numar minim de recenzii
    min_reviews si elimina toate randurile din matricea mat care au mai
    putin de min_reviews recenzii.

## cosine_similarity
        Aceasta functie implementeaza formula din enunt : calculeaza produsul
    scalar (dot_product) intre vectorii normalizati ai lui A si B. Acest
    produs este egal cu cosinusul unghiului dintre ei.

## recommendations
        Aceasta functie foloseste functiile implementate anterior : citeste
    matricea din fisierul .csv, elimina utilizatorii cu mai putin de
    min_reviews recenzii prin apelarea functiei 'preprocess'. Apoi, se
    calculeaza descompunerea valorilor singulare ale matricei procesate
	(functia svds returneaza doar primele num_features valori singulare si
    vectorii singulari corespunzatori), dupa care calculez similaritatea
    fiecarei teme cu tema preferata, vector pe care mai apoi il sortez in
    ordine descrescatoare a similaritatii. La final returnez indicii celor mai
    similare 'num_recoms' teme cu tema preferata.
    ('sorted_indices(2:num_recoms+1)' exclude prima tema, care este tema
    preferata insasi, si include urmatoarele num_recoms teme)
    Totul se termina cu bine:)
