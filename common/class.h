#ifndef %{ClassGuard}
#define %{ClassGuard}

#include <Godot.hpp>
#include <%{BaseClass}.hpp>

namespace godot{

class %{ClassName} : public %{BaseClass}{
	GODOT_CLASS(%{ClassName}, %{BaseClass});

public:
	static void _register_methods();

	%{ClassName}();
	~%{ClassName}();

	void _init();
	void _ready();
	void _process(float delta);
};

}

#endif//%{ClassGuard}
