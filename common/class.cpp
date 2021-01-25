#include "%{ClassHdr}"

using namespace godot;

void %{ClassName}::_register_methods(){
	register_method("_ready", &%{ClassName}::_ready);
	register_method("_process", &%{ClassName}::_process);
}

%{ClassName}::%{ClassName}(){
}

%{ClassName}::~%{ClassName}(){
}

void %{ClassName}::_init(){
}

void %{ClassName}::_ready(){
}

void %{ClassName}::_process(float delta){
}
