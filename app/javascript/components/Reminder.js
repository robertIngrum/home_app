import React from "react"
import PropTypes from "prop-types"

class Reminder extends React.Component {
  render () {
    return (
      <div id="reminder" className={this.props.status}>
        <div className="title">{this.props.title}</div>
        <div className="description">{this.props.description}</div>
        <div className="status">{this.props.status}</div>
      </div>
    );
  }
}

Reminder.propTypes = {
  title: PropTypes.string,
  description: PropTypes.string,
  status: PropTypes.string
};
export default Reminder
