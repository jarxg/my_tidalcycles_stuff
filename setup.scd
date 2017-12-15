s.options.numBuffers = 1024 * 4; // + samples
s.options.memSize = 8192 * 16; // if "alloc failed" messages
s.options.maxNodes = 1024 * 1; // if drop outs and "too many nodes"
// (from jarmitage's setup.scd)

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
