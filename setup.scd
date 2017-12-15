ServerOptions.devices;
s.options.outDevice = "Soundflower (2ch)";
s.options.outDevice = "Built-in Output";
s.options.outDevice = "Scarlett 2i2 USB";

s.recSampleFormat = "int16";
s.recHeaderFormat = "wav";

s.boot;
SuperDirt.start;
s.quit;

LADSPA.listPlugins

s.record;
s.stopRecording;
