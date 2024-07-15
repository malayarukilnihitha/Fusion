% Start timing
tic;
Im1 = imread("/home/seaeurov/SEA-UE/INTERNSHIPS-2024/NIHITHA/IMPLEMENTATION/ALGORITHMS/ALL_IMAGES/img_in/3.jpg");
img = fusion(Im1);

Im1_ = rgb2gray(img);
Im2 = rgb2gray(Im1);

hn1 = imhist(Im1_)./numel(Im1_);
hn2 = imhist(Im2)./numel(Im2);

% Calculate the Euclidean distance
f = norm(hn1-hn2);
disp(['Euclidean distance of the image: ', num2str(f)]);
% Stop timing
t = toc;
% Display execution time
disp(['Total execution time: ', num2str(t), ' seconds']);

% Get information about memory consumption of variables
variable_info = whos;

% Initialize total memory counter
total_memory = 0;

% Loop through each variable and sum up memory consumption
for i = 1:length(variable_info)
    total_memory = total_memory + variable_info(i).bytes;
end

% Display total memory consumption
disp(['Total memory used by variables: ', num2str(total_memory), ' bytes']);