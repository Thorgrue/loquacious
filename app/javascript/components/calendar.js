import flatpickr from "flatpickr";
require("flatpickr/dist/themes/dark.css");

const Calendar = () => {
  const calendar = document.querySelector("#booking_date_of_arrival")
  if (calendar == null)
    return

  const calendarForm = document.querySelector("#calendar-form")

  flatpickr(calendar, {
    mode: 'range',
    minDate: "today",
    disable: monumentBookedDates
  })
}

export default Calendar;
