// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

Dropzone.options.mediaDropzone = {
    paramName: "attachment",
    maxFilesize: 2,
    clickable: true,
    addRemoveLinks: true,
    init: function () {
      return this.on('removedfile', function(file) {
        if (file.xhr) {
          return $.ajax({
            url: "" + ($("#media-dropzone").attr("action")) + "/" + (JSON.parse(file.xhr.response).id),
            type: 'DELETE'
          });
        }
      });
    }
};