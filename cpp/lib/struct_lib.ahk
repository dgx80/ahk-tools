


struct(name)
{
    send typedef struct{ENTER}{{}{ENTER}{}}%name%{;}{ENTER 2}
}
struct_declaration(name,funcname)
{
    send %name%{*} %name%_%funcname%(%name%{*} ptr){;}{ENTER}
}
struct_def(name,funcname)
{
    send %name%{*} %name%_%funcname%(%name%{*} ptr){ENTER}{{}{ENTER}
}
struct_init_declaration(name)
{
    struct_declaration(name,"Init")
}
struct_release_declaration(name)
{
	struct_declaration(name,"Release")
}
struct_init_def(type_name)
{
	cond1 = ptr == NULL
	struct_def(type_name,"Init")
	
	codetrue = ptr = (%type_name%*)malloc(sizeof(%type_name%));{RETURN 2}if(ptr == NULL){RETURN}{{}{RETURN}ERR_SendMessage(ERR_TYPE_mallocFailed);{RETURN}{}}
	codefalse = //memory already alloc
	
	WriteAllCondition(cond1,codetrue,codefalse)


	cond1 := "ptr {!}= NULL"
	codetrue = //Insert code here
	codefalse = ERR_SendMessage(ERR_TYPE_Assertion);
	WriteAllCondition(cond1,codetrue,codefalse)

	send return ptr{;}{ENTER}{}}
	ret(1)
}
struct_release_def(type_name)
{
	cond1 = ptr {!}= NULL
	struct_def(type_name,"Release")
	codetrue = free(ptr){;}{RETURN}ptr = NULL{;}
	codefalse = //ptr already free
	WriteAllCondition(cond1,codetrue,codefalse)
	send return ptr{;}
	ret(1)
	send {}}
	ret(1)
}