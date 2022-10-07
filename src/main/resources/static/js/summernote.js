const fileInput = document.getElementById("fileUpload");
const handleFiles = (e) => {
	const selectedFile = [...fileInput.files];
	const fileReader = new FileReader();
	fileReader.readAsDataURL(selectedFile[0]);
	fileReader.onload = function() {
		document.getElementById("previewImg").src = fileReader.result;
	};
};
fileInput.addEventListener("change", handleFiles);
$('#summernote').summernote({
	placeholder: 'Hello stand alone ui',
	tabsize: 2,
	height: 120,
	toolbar: [
		['style', ['style']],
		['font', ['bold', 'underline', 'clear']],
		['color', ['color']],
		['para', ['ul', 'ol', 'paragraph']],
		['table', ['table']],
		['insert', ['link', 'picture', 'video']],
		['view', ['fullscreen', 'codeview', 'help']]
	]
});