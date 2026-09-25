#include <stdio.h>
extern int sum(int* array, int count);

int main()
{

    
    int count;
    FILE *file;
    file= fopen("data.txt", "r");
    fscanf(file, "%d", &count);
    int arr[count];
    for (int i=0; i<count;i++)
    {
        fscanf(file, "%d", &arr[i]);
    }

    int s= sum(arr, count);
    printf("%d",s);
    fclose(file);

    return 0;
}