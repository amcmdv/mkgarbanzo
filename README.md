# Operant Conditioning Simulator with Associative Arrays

## 🧠 Origin: The `recalledMemory` Example

This project was inspired by a simple JavaScript snippet that dynamically creates an associative array. The concept was expanded to simulate **operant conditioning**, a behavourial psychology model where associations between stimuli and responses are learned and reinforced over time.

---

The foundation of this project lies in the following JavaScript code:

![image](https://github.com/user-attachments/assets/11383733-afe1-48cd-819b-00f39a08810f)


Uses:

	1.	Associative Array Creation:
The code essentially creates an associative array (also known as a dictionary or object in JavaScript) that maps string keys (memoryId0, memoryId1) to their corresponding index values.
	2.	Storing Indexed Data:
This structure can be useful for storing data that is indexed by a string identifier rather than a numerical index. For example, if you are recalling specific memory slots in a program and you want to track which memory slots have been accessed.
	3.	Dynamic Property Assignment:
You might use this pattern when you need to dynamically assign properties to an object based on looping conditions, such as generating a list of items or identifiers on the fly.
	4.	Memory Management Simulation:
The code could be part of a larger system that manages memory (or other resources) in a simulation or game, where each memoryId represents a unique memory slot or resource identifier.

---

This repository simulates **operant conditioning** using associative arrays and memory management techniques. The project models the formation of associations between a conditioned stimulus (CS) and an unconditioned stimulus (US) through reinforcement and decay.


## Features

- **Pre-conditioning Phase:** Initialize stimuli without associations.
- **Conditioning Phase:** Build and strengthen associations incrementally.
- **Reinforcement:** Simulate repeated reinforcement trials.
- **Decay Simulation:** Model the weakening of associations over time.
- **Weight Matrix:** Visualize relationships between stimuli as a transformation matrix.

## How It Works

1. **Initialise Stimuli:** Define conditioned stimuli (CS) and unconditioned stimuli (US).
2. **Build Associations:** Incrementally strengthen connections between stimuli during conditioning.
3. **Reinforce Relationships:** Simulate repeated trials to reinforce learned behaviors.
4. **Simulate Decay:** Model the natural weakening of associations over time in the absence of reinforcement.

## Examples

### Associative Memory Example
Associative memory is implemented as a structure for storing relationships and reinforcement strengths:

```matlab
% Initialise associative memory
associativeMemory = struct();

% Simulate conditioning for "bell" -> "food"
for i = 1:5
    associativeMemory = condition(associativeMemory, 'bell', 'food', 1);
end

disp(associativeMemory);

