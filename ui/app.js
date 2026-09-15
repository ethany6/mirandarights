const miranda = document.getElementById('miranda');
const departmentLogo = document.getElementById('department-logo');
const departmentName = document.getElementById('department-name');
const departmentSubtitle = document.getElementById('department-subtitle');
const rightsList = document.getElementById('rights-list');

function getLogoSource(path) {
    if (!path) {
        return '';
    }

    if (/^(https?:|nui:\/\/)/i.test(path)) {
        return path;
    }

    return path.replace(/^\/?ui\//i, '').replace(/^\//, '');
}

window.addEventListener('message', (event) => {
    if (event.data.action === 'show') {
        const department = event.data.department || {};
        const rights = event.data.rights || [];

        departmentName.textContent = department.name || 'Department';
        departmentSubtitle.textContent = department.subtitle || 'Police procedure';
        departmentLogo.alt = department.logoAlt || 'Department logo';
        const logoSource = getLogoSource(department.logo);
        departmentLogo.src = logoSource;
        departmentLogo.style.display = logoSource ? 'block' : 'none';

        rightsList.replaceChildren();
        rights.forEach((right) => {
            const paragraph = document.createElement('p');
            paragraph.textContent = right;
            rightsList.appendChild(paragraph);
        });

        miranda.classList.add('visible');
    }

    if (event.data.action === 'hide') {
        miranda.classList.remove('visible');
    }
});
