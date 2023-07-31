/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function clicked(e)
{
    if(!confirm('Are you sure?')) {
        e.preventDefault();
    }
}
