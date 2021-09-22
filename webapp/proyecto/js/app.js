(function(){/*funcion que se ejecuta a si misma, crear una constante*/
    const listElements = document.querySelectorAll('.menu_item--show');/*obtiene todos los elementos*/
    const list = document.querySelector('.menu_links');/*obtiene un solo elemento*/
    const menu = document.querySelector('.menu_hamburguer');

    const addClick = ()=>{
        listElements.forEach(element =>{
            /*Cuando de click a ese elemento se ejecute una funcion*/
            element.addEventListener('click', ()=>{

                let subMenu =element.children[1];
                let height = 0;
                element.classList.toggle('menu_item--active');/*Agregar o quitar una clase*/

                /*console.log(subMenu.clientHeight);/*pregunta la altura del elemento*/

                if(subMenu.clientHeight === 0){/*Si la altura es = a 0, entonces*/
                    height = subMenu.scrollHeight;/*Altura minima para que exista el elemento*/
                }

                subMenu.style.height = `${height}px`;/*Se agrega la altura*/

            });
        });
    }

    const deleteStyleHeight = ()=>{/*Funcion para que se cierre submenu*/
        listElements.forEach(element=>{
            if (element.children[1].getAttribute('style')){
                element.children[1].removeAttribute('style');
                element.classList.remove('menu_item--active');
            }
        });
    }

    window.addEventListener('resize', ()=>{
        if (window.innerWidth > 900){
            deleteStyleHeight();
            if(list.classList.contains('menu_links--show'))
                list.classList.remove('menu_links--show');
        }else{
            addClick();
        }
    });

    if(window.innerWidth<=900){
        addClick();
    }
    /*para abrir y cerrar el menu*/
    menu.addEventListener('click', ()=> list.classList.toggle('menu_links--show'));

})();

