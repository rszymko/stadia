import { Controller } from "stimulus"
import { Datepicker } from 'vanillajs-datepicker';

export default class extends Controller {
  initialize() {
    const datepicker = new Datepicker(this.element,
                                    { format: 'yyyy-mm-dd' }); 
  }
}
