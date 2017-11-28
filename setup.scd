s.options.memSize = 524288
s.options.outDevice = "Soundflower (2ch)";
s.options.outDevice = "Built-in Output";
s.options.outDevice = "Scarlett 2i2";

s.boot;
s.quit;

s.record;
s.stopRecording;

s.makeWindow;

SuperDirt.start;

ServerOptions.devices;

Server.default.options.outDevice_("Soundflower (2ch)");
Server.default.options.outDevice_("Built-in Output");
Server.default.options.outDevice_("Scarlett 2i2");
