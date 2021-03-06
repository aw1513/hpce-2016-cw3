CPPFLAGS += -I include
CPPFLAGS += -W -Wall
CPPFLAGS += -O3

# LDLIBS += -lOpenCL

all : bin/make_world bin/render_world bin/step_world

bin/% : src/%.cpp src/heat.cpp
	mkdir -p $(dir $@)
	$(CXX) $(CPPFLAGS) -o $@ $^ $(LDFLAGS) $(LDLIBS)

