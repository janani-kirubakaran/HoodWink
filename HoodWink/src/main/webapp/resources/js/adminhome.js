$(function() {

		$('#admin-home-link').click(function(e) {
			$("#admin-home").delay(100).fadeIn(100);
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#category-link').removeClass('active');
			$("#viewCategory").fadeOut(100);
			$('#viewCategoryLink').removeClass('active');
			$("#viewSupplier").fadeOut(100);
			$('#viewSupplierLink').removeClass('active');
			$("#viewProduct").fadeOut(100);
			$('#viewProductLink').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#add-form-link').click(function(e) {
			$("#add-form").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#category-link').removeClass('active');
			$("#viewCategory").fadeOut(100);
			$('#viewCategoryLink').removeClass('active');
			$("#viewSupplier").fadeOut(100);
			$('#viewSupplierLink').removeClass('active');
			$("#viewProduct").fadeOut(100);
			$('#viewProductLink').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#category-link').click(function(e) {
			$("#category-form").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#viewCategory").fadeOut(100);
			$('#viewCategoryLink').removeClass('active');
			$("#viewSupplier").fadeOut(100);
			$('#viewSupplierLink').removeClass('active');
			$("#viewProduct").fadeOut(100);
			$('#viewProductLink').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});
		$('#supplier-link').click(function(e) {
			$("#supplier-form").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#category-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#viewCategory").fadeOut(100);
			$('#viewCategoryLink').removeClass('active');
			$("#viewSupplier").fadeOut(100);
			$('#viewSupplierLink').removeClass('active');
			$("#viewProduct").fadeOut(100);
			$('#viewProductLink').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});
		$('#viewCategoryLink').click(function(e) {
			$("#viewCategory").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#category-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#viewSupplier").fadeOut(100);
			$('#viewSupplierLink').removeClass('active');
			$("#viewProduct").fadeOut(100);
			$('#viewProductLink').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});
		$('#viewSupplierLink').click(function(e) {
			$("#viewSupplier").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#caetgory-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#viewCategory").fadeOut(100);
			$('#viewCategoryLink').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
			$("#viewProduct").fadeOut(100);
			$('#viewProductLink').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});
		$('#viewProductLink').click(function(e) {
			$("#viewProduct").delay(100).fadeIn(100);
			$("#admin-home").fadeOut(100);
			$('#admin-home-link').removeClass('active');
			$("#category-form").fadeOut(100);
			$('#caetgory-link').removeClass('active');
			$("#add-form").fadeOut(100);
			$('#add-form-link').removeClass('active');
			$("#viewCategory").fadeOut(100);
			$('#viewCategoryLink').removeClass('active');
			$("#viewSupplier").fadeOut(100);
			$('#viewSupplierLink').removeClass('active');
			$("#supplier-form").fadeOut(100);
			$('#supplier-link').removeClass('active');
     		$(this).addClass('active');
			e.preventDefault();
		});
		
		

	});