// llinked list operations
#include <stdio.h>
#include <stdlib.h>
struct node
{
    int info;
    struct node *next;
};
struct node *top = NULL;

void push(int x)
{
    struct node *newnode;
    newnode = (struct node *)malloc(sizeof(struct node));
    newnode->info = x;
    newnode->next = NULL;
    if (top == NULL)
    {
        top = newnode;
        top->next = NULL;
    }
    else
    {
        newnode->next = top;
        top = newnode;
    }
}
void pop()
{
    struct node *temp = top;
    if (top == NULL)
    {
        printf("Empty stack ");
    }
    else
    {
        top = top->next;
        free(temp);
    }
}
void print()
{
    struct node *temp = top;
    if (top == NULL)
        printf("Empty Stakc");
    else
    {
        while (temp != NULL)
        {
            printf("%d\n", temp->info);
            temp = temp->next;
        }
    }
}
int main(int argc, char const *argv[])
{
    int ITEM, choice;
    while (1)
    {
        printf("Enter Choice (1: PRINT, 2: PUSH, 3: POP, 4: Exit..:");
        scanf("%d", &choice);

        switch (choice)
        {
        case 1:
            print();
            break;
        case 2:
            printf("Enter Item to be insert :");
            scanf("%d", &ITEM);
            push(ITEM);
            break;
        case 3:
            pop();
            break;
        case 4:
            exit(0);
        default:
            printf("\nInvalid choice.");
            break;
        }
    }
    return 0;
}
