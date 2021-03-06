BUILD:=build/
CXX:=clang++
CXXFLAGS=-std=c++11 -O3 -Iinclude/

TESTSRC:=test

EXES:=$(patsubst $(TESTSRC)/%.cpp,$(BUILD)/%,$(wildcard $(TESTSRC)/*.cpp))

all : $(EXES)

$(BUILD)/% : $(TESTSRC)/%.cpp include/fusca.h
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) $< -o $@

print-% : ; @echo $* is $($*) 
