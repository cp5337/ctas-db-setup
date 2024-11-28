const fs = require("fs");
const path = require("path");

// Path to the input JSON file
const inputFilePath = path.join(__dirname, "tasks.json"); // Replace 'tasks.json' with your file name
const outputFilePath = path.join(__dirname, "enriched_relationships.json");

// Helper function to generate relationships between tasks and POLE entities
function enrichTaskWithRelationships(task, categoryName) {
  const enrichedTask = {
    ...task,
    // Add your relationship enrichment logic here
  };
  return enrichedTask;
}

// Function to process and enrich the JSON file
function processAndEnrichJSON(inputFilePath, outputFilePath) {
  try {
    // Read the JSON file
    const rawData = fs.readFileSync(inputFilePath, "utf-8");
    const jsonData = JSON.parse(rawData);

    const enrichedData = {};

    // Iterate through categories and enrich each task with relationships
    for (const categoryKey in jsonData) {
      const category = jsonData[categoryKey];
      if (category.tasks && Array.isArray(category.tasks)) {
        enrichedData[categoryKey] = {
          ...category,
          tasks: category.tasks.map((task) =>
            enrichTaskWithRelationships(task, categoryKey)
          ),
        };
      }
    }

    // Write the enriched JSON to a new file
    fs.writeFileSync(
      outputFilePath,
      JSON.stringify(enrichedData, null, 2),
      "utf-8"
    );
    console.log(
      `Enriched JSON with relationships has been saved to ${outputFilePath}`
    );
  } catch (error) {
    console.error("Error processing JSON file:", error);
  }
}

// Run the enrichment process
processAndEnrichJSON(inputFilePath, outputFilePath);
