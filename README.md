# Operant Conditioning Simulator with Associative Arrays

## 🧠 Origin: The `recalledMemory` Example

This project was inspired by a simple JavaScript snippet that dynamically creates an associative array. The concept was expanded to simulate **operant conditioning**, a behavourial psychology model where associations between stimuli and responses are learned and reinforced over time.

---

The foundation of this project lies in the following JavaScript code:

'''javascript
var recalledMemory = [];
for (var b = 0; b < 2; b++) {
    recalledMemory['memoryId' + b] = b;
}
'''
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

