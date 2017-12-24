(
s.options.numBuffers = 1024 * 16; // + samples
s.options.memSize = 8192 * 16; // if "alloc failed" messages
s.options.maxNodes = 1024 * 16; // if drop outs and "too many nodes"
// (from jarmitage's startup.scd)
)

ServerOptions.devices;
s.options.outDevice = "Soundflower (2ch)";
s.options.outDevice = "Built-in Output";
s.options.outDevice = "Scarlett 2i2 USB";

//boot
s.boot;
SuperDirt.start;
s.quit;

// record
(
s.recSampleFormat = "int16";
s.recHeaderFormat = "wav";
)
s.record;
s.stopRecording;
