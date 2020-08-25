app.Products = function() {
  this._input = $('#books-search-txt');
  this._initAutocomplete();
};

app.Products.prototype = {
  _initAutocomplete: function() {
    this._input
      .autocomplete({
        source: '/products/search',
        appendTo: '#books-search-results',
        select: $.proxy(this._select, this)
      })
      .autocomplete('instance')._renderItem = $.proxy(this._render, this);
  },

  _render: function(ul, item) {
    var markup = [
      '<span class="img">',
        '<img src="' + item.product_image_url + '" />',
      '</span>',
      '<span class="title">' + item.product_name + '</span>',
      '<span class="author">' + item.product_category + '</span>',
      '<span class="price">' + item.sales_price + ' ' + item.published_at + '</span>'
    ];
    return $('<li>')
      .append(markup.join(''))
      .appendTo(ul);
  },

  _select: function(e, ui) {
    this._input.val(ui.item.product_name + ' - ' + ui.item.product_category);
    return false;
  }
};