if [ "$#" -ne 2 ]; then
            echo "Usage: $0 <start_index> <end_index>"
                exit 1
fi
start_index=$1
end_index=$2
# Validate start and end index
if [ "$start_index" -gt "$end_index" ]; then
            echo "Error: Start index cannot be greater than end index."
                exit 1
fi
# Define the filename
filename="inputFile"
# Create or overwrite the file
> "$filename"
# Generate content and append to the file
for ((i=start_index; i<=end_index; i++)); do
            echo "$i, $((RANDOM % 300))" >> "$filename"
    done
    echo "CSV file generated: $filename"
