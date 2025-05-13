window.addEventListener('message', function (event) {
    if (event.data.action === 'notify') {
        showNotification(event.data);
    }
});

function showNotification(data) {
    const container = document.getElementById('notifications');

    const note = document.createElement('div');
    note.className = `notification ${data.type}`;
    note.innerHTML = `<strong>${data.title}</strong><br>${data.message}`;

    container.appendChild(note);

    setTimeout(() => {
        note.remove();
    }, data.timeout || 5000);
}

