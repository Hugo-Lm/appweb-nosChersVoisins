import flatpickr from "flatpickr";

export const initFlatpickr = () => {
  const datepickr = document.getElementById("booking_start_date")
  debugger
  if (datepickr) {
    flatpickr("#booking_start_date", {});
  }
}

