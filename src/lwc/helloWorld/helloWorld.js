/**
 * Created by 1184087 on 2021-09-17.
 */

import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
	greeting = 'World';
	changeHandler(event) {
	this.greeting = event.target.value;
	}
}