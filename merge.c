#include "swap.c"

void mergesort(List **head){
    if(head == NULL || (*head == NULL) || (*head)->next == NULL)
        return;
    List *left = *head;
    List *right = (*head)->next;
    List *curr = NULL;
    List *last = NULL;

    /* Find the middle node */
    while(right) {
        right = right->next;
        if(right) {
            left = left->next;
            right = right->next;
        }
    }

    right = left->next;
    left->next = NULL;
    left = *head;

    mergesort(&left);
    mergesort(&right);

    /* Merge */
    *head = NULL;
    while(left && right) {
        if(left->value > right->value) {
            curr = right;
            right = right->next;
        } else {
            curr = left;
            left = left->next;
        }
        if(*head) last->next = curr;
        else *head = curr;

        last = curr;
    }
    if(last){
        if(left) {
            last->next = left;
        } else if(right) {
            last->next = right;
        }
    }
}
