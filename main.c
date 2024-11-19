#include <stdio.h>
#include <stdlib.h>

void povoa_historiograma(char *h[], int valor, int categoria) {
    for (int i = 0; i < valor; i++) {
        h[categoria][i] = '*';
    }
}

void imprimir_historiograma(char *h[], int valores[], int categorias) {
    for (int i = 0; i < categorias; i++) {
        printf("%d ", valores[i]);
        for (int j = 0; j < valores[i]; j++) {
            printf("%c", h[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int categorias;
    scanf("%d", &categorias);

    int valores[categorias];
    char *historiograma[categorias];

    for (int i = 0; i < categorias; i++) {
        scanf("%d", &valores[i]);
        if (valores[i] == 0) {
            historiograma[i] = NULL;
        } else {
            historiograma[i] = (char *)malloc(valores[i] * sizeof(char));
            if (historiograma[i] == NULL) {
                return 1;
            }
            povoa_historiograma(historiograma, valores[i], i);
        }
    }

    imprimir_historiograma(historiograma, valores, categorias);

    for (int i = 0; i < categorias; i++) {
        if (historiograma[i] != NULL) {
            free(historiograma[i]);
        }
    }

    return 0;
}

