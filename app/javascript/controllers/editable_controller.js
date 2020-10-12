// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction

import { Controller } from 'stimulus'
import Rails from '@rails/ujs'

export default class extends Controller {
  static targets = ['item', 'input', 'form']

  showInput(event) {
    if (!this.itemTarget.classList.contains('editing')) {
      this.itemTarget.classList.add('editing')
      this.inputTarget.focus()
      this.inputTarget.setSelectionRange(
        this.inputTarget.value.length,
        this.inputTarget.value.length
      )
    }
  }

  submitForm(event) {
    Rails.fire(this.formTarget, 'submit')
  }
}
