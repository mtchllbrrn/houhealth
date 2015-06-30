$(document).on("page:change", function() {
  var input = $('input[name=search]');
  var form = $('#search-form');

  form.on('submit', function(e) {
    e.preventDefault();

    // Require that search be at least three characters long.
    // This prevents an overloaded result set.
    if (input.val().length >= 3) {
      form.unbind().submit();
    } else {
      alert("Please enter a search term at least three characters long.");
    }
  });
});
