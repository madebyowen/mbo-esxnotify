window.addEventListener('message', function (event) {
    if (event.data.action === 'notify') {
        createNotification(event.data);
    }
});

function createNotification(data) {
    const container = document.getElementById("notifications");

    const notification = document.createElement("div");
    notification.className = `notification ${data.type}`;
    notification.innerHTML = `<strong>${data.title}</strong><br>${data.message}`;

    container.appendChild(notification);

    setTimeout(() => {
        notification.remove();
        fetch(`https://${GetParentResourceName()}/notification_done`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json; charset=UTF-8' },
            body: JSON.stringify({})
        });
    }, data.timeout || 5000);
}
