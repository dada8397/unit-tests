b main
r
source scripts/create_list.gdb
source scripts/print_list.gdb
source scripts/free_list.gdb
set $head = (List**)malloc(sizeof(List*))
set logging file result-merge
create_list (*($head)) 3
set $_head = (*($head))
p $_head->value = 12
p $_head = $_head->next
p $_head->value = 4
p $_head = $_head->next
p $_head->value = 5
p $_head = $_head->next
set logging on
p "test begin"
p "old_list"
printf_list (*($head))
p mergesort($head)
set logging on
p "new_list"
printf_list (*($head))
set logging off
free_list (*($head))
create_list (*($head)) 6
set $_head = (*($head))
p $_head->value = 456
p $_head = $_head->next
p $_head->value = 78
p $_head = $_head->next
p $_head->value = 41
p $_head = $_head->next
p $_head->value = 25
p $_head = $_head->next
p $_head->value = 1
p $_head = $_head->next
p $_head->value = 47
p $_head = $_head->next
set logging on
p "test begin"
p "old_list"
printf_list (*($head))
p mergesort($head)
set logging on
p "new_list"
printf_list (*($head))
set logging off
free_list (*($head))
create_list (*($head)) 7
set $_head = (*($head))
p $_head->value = 7
p $_head = $_head->next
p $_head->value = 5
p $_head = $_head->next
p $_head->value = 97
p $_head = $_head->next
p $_head->value = 6
p $_head = $_head->next
p $_head->value = 3
p $_head = $_head->next
p $_head->value = 7
p $_head = $_head->next
p $_head->value = 8
p $_head = $_head->next
set logging on
p "test begin"
p "old_list"
printf_list (*($head))
p mergesort($head)
set logging on
p "new_list"
printf_list (*($head))
set logging off
free_list (*($head))
create_list (*($head)) 10
set $_head = (*($head))
p $_head->value = 100
p $_head = $_head->next
p $_head->value = 99
p $_head = $_head->next
p $_head->value = 98
p $_head = $_head->next
p $_head->value = 97
p $_head = $_head->next
p $_head->value = 96
p $_head = $_head->next
p $_head->value = 95
p $_head = $_head->next
p $_head->value = 94
p $_head = $_head->next
p $_head->value = 93
p $_head = $_head->next
p $_head->value = 92
p $_head = $_head->next
p $_head->value = 21474836
p $_head = $_head->next
set logging on
p "test begin"
p "old_list"
printf_list (*($head))
p mergesort($head)
set logging on
p "new_list"
printf_list (*($head))
set logging off
free_list (*($head))
q
y
