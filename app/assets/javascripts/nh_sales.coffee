# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#data-table').dataTable
    processing: true
    serverSide: true
    ajax: $('#nh_sales-table').data('source')
    pagingType: 'full_numbers'
    scrollX: true
    fixedColumns:{leftColumns:2}
    order:false
    
