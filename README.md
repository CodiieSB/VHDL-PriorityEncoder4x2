# VHDL-PriorityEncoder4x2
A 4x2 priority encoder is a digital circuit that takes four input lines and encodes them into a two-bit binary output based on the priority of the input lines. Here's how it works:

Inputs: The priority encoder has four input lines (let's call them A, B, C, and D), where each input represents a binary value (0 or 1). These inputs are typically labeled as the least significant to most significant inputs.

Priority Encoding: The priority encoder detects the highest priority active input among the four input lines. The input with the highest priority is the one with the most significant bit set to '1'. If multiple inputs are active, the encoder will prioritize the input with the highest index (D has the highest priority, followed by C, then B, and finally A).

Output: The output of a 4x2 priority encoder consists of two bits, which represent the binary encoding of the highest priority active input. The two-bit output indicates the position of the highest priority input, with bit 1 representing the most significant bit and bit 0 representing the least significant bit.

For example, if input D is active (1) while all other inputs are inactive (0), the output will be "11" to indicate the highest priority input. If multiple inputs are active, the output will represent the highest priority input based on the input index.

Priority Resolution: Priority encoders are commonly used in digital systems where multiple inputs may be active simultaneously, and it's necessary to determine which input has the highest priority. They are often used in applications such as interrupt handling in microcontrollers, where the highest priority interrupt needs to be serviced first.

In summary, a 4x2 priority encoder is a digital circuit that encodes four input lines into a two-bit binary output, indicating the position of the highest priority active input.
