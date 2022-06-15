import { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);
  return <div className='App'>
    Count: {count}
    <div>
      <button onClick={() => setCount(count + 1)}>Add</button>
      <button onClick={() => setCount(count - 1)}>Subtract</button>
    </div>
    </div>;
}

export default App;
