% Initialise stimuli
stimuli.CS = {'bell', 'light'};
stimuli.US = {'food', 'shock'};

% Associative memory
associativeMemory = struct();

% Weight matrix setup
CS_index = containers.Map({'bell', 'light'}, [1, 2]);
US_index = containers.Map({'food', 'shock'}, [1, 2]);
weightMatrix = zeros(2, 2);

% Conditioning: Associative memory
for i = 1:5
    associativeMemory = condition(associativeMemory, 'bell', 'food', 1);
end
for i = 1:3
    associativeMemory = condition(associativeMemory, 'light', 'shock', 1);
end

% Conditioning: Weight matrix
for i = 1:5
    weightMatrix = updateWeightMatrix(weightMatrix, CS_index, US_index, 'bell', 'food', 1);
end
for i = 1:3
    weightMatrix = updateWeightMatrix(weightMatrix, CS_index, US_index, 'light', 'shock', 1);
end

% Display results
disp('Associative Memory:');
disp(associativeMemory);

disp('Weight Matrix:');
disp(weightMatrix);

% Decay
associativeMemory = decayAssociations(associativeMemory, 0.5);
weightMatrix = decayWeightMatrix(weightMatrix, 0.5);

disp('After Decay:');
disp('Associative Memory:');
disp(associativeMemory);

disp('Weight Matrix:');
disp(weightMatrix);
