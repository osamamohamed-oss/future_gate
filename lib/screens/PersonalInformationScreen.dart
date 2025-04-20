document.addEventListener('DOMContentLoaded', function() {
  // Create filter elements for Personal Information
  const filterContainer = document.createElement('div');
  filterContainer.className = 'filter-container';
  filterContainer.style.cssText = `
    position: absolute;
    width: 350px;
    height: 60px;
    left: 15px;
    top: 250px;
    background: #FFFFFF;
    border: 1px solid #EBC069;
    border-radius: 12px;
    display: flex;
    align-items: center;
    padding: 0 15px;
    justify-content: space-between;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  `;

  // Create the search input for personal data
  const searchInput = document.createElement('input');
  searchInput.className = 'filter-input';
  searchInput.placeholder = 'Search by Name, ID, or Specialization...';
  searchInput.style.cssText = `
    width: 60%;
    height: 30px;
    border: 1px solid #EBC069;
    border-radius: 6px;
    padding: 0 10px;
    font-family: 'Volkhov', sans-serif;
    font-size: 14px;
    transition: border-color 0.3s ease;
  `;

  // Create the additional filter dropdown for category (e.g., Gender, Grade)
  const categoryFilter = document.createElement('select');
  categoryFilter.className = 'category-filter';
  categoryFilter.style.cssText = `
    width: 35%;
    height: 30px;
    border: 1px solid #EBC069;
    border-radius: 6px;
    padding: 0 5px;
    font-family: 'Volkhov', sans-serif;
    font-size: 14px;
    background: #FCF8F0;
    transition: background-color 0.3s ease;
  `;

  // Add options to the category filter (e.g., Gender, Grade, etc.)
  const options = [
    { value: 'all', text: 'All Categories' },
    { value: 'male', text: 'Male' },
    { value: 'female', text: 'Female' },
    { value: 'passed', text: 'Passed' },
    { value: 'failed', text: 'Failed' }
  ];

  options.forEach(option => {
    const optionElement = document.createElement('option');
    optionElement.value = option.value;
    optionElement.textContent = option.text;
    categoryFilter.appendChild(optionElement);
  });

  // Append elements to the filter container
  filterContainer.appendChild(searchInput);
  filterContainer.appendChild(categoryFilter);

  // Add the filter container to the document body
  document.body.appendChild(filterContainer);

  // Get the personal information elements (assuming they exist in your HTML)
  const personalElements = document.querySelectorAll('.personal-info [data-name]');
  const categoryElements = document.querySelectorAll('.personal-info [data-category]');

  if (!personalElements.length || !categoryElements.length) {
    console.warn('No personal information or category elements found.');
    return;
  }

  // Filter function
  function filterPersonalInfo() {
    const searchTerm = searchInput.value.toLowerCase();
    const categoryValue = categoryFilter.value;

    // Loop through personal info elements
    personalElements.forEach((personal, index) => {
      const categoryElement = categoryElements[index];
      const personalText = personal.textContent.toLowerCase();
      const categoryText = categoryElement.textContent.toLowerCase();

      // Parent row element that contains both personal info and category
      const row = personal.closest('tr') || personal.parentElement;

      // Check if personal info matches search term
      const matchesSearch = personalText.includes(searchTerm);

      // Check if category matches selected filter
      let matchesCategory = true;
      if (categoryValue === 'male') {
        matchesCategory = categoryText.includes('male');
      } else if (categoryValue === 'female') {
        matchesCategory = categoryText.includes('female');
      } else if (categoryValue === 'passed') {
        matchesCategory = categoryText.includes('passed');
      } else if (categoryValue === 'failed') {
        matchesCategory = categoryText.includes('failed');
      }

      // Show or hide based on both filters
      if (matchesSearch && matchesCategory) {
        row.style.display = 'table-row'; // or '' if it's a block element
        row.style.transition = 'opacity 0.3s ease';
      } else {
        row.style.display = 'none';
      }
    });
  }

  // Add event listeners to input and select elements
  searchInput.addEventListener('input', filterPersonalInfo);
  categoryFilter.addEventListener('change', filterPersonalInfo);
});
